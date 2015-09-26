var _ = require('lodash');
var fs = require('fs');
var path = require('path');
var async = require('async');
var Handlebars = require('handlebars');
var Metalsmith = require('metalsmith');
var branch = require('metalsmith-branch');
var collections = require('metalsmith-collections');
var copy = require('metalsmith-copy');
var fileMetadata = require('metalsmith-filemetadata');
var markdown = require('metalsmith-markdown');
var templates = require('metalsmith-in-place');
var layouts = require('metalsmith-layouts');
var pdf = require('metalsmith-pdf');
var sass = require('metalsmith-sass');
var lilynode = require('lilynode');
var temp = require('temp');

var options = {
	skipLilypond: false,
	skipPdf: false
};

process.argv.forEach(function(flag) {
	options[flag.replace(/^--/, '')] = true;
});

// Set default wkhtmltopdf command to run with a headless X server. In order for
// this to work, we need to access the actual module instance used by metalsmith-pdf.
var wkhtmltopdf = require('metalsmith-pdf/node_modules/wkhtmltopdf');
wkhtmltopdf.command = './vendor/bin/wkhtmltopdf';

Handlebars.registerHelper('trim', function(options) {
	return options.fn(this).replace(/[\t\r\n]/g, '');
});

Handlebars.registerHelper('verse', function(verse, options) {
	var label = verse;

	if (options.hash.label) {
		label = options.hash.label;
	}

	var url = 'https://www.biblegateway.com/passage/?search=' + encodeURIComponent(verse);

	if (options.hash.translation) {
		url = url + '&version=' + encodeURIComponent(options.hash.translation);
	}

	return new Handlebars.SafeString('[' + label + '](' + url + ')');
});

Handlebars.registerHelper('book', function(name) {
	return new Handlebars.SafeString(
		'<cite class="book">' +
			Handlebars.Utils.escapeExpression(name) +
		'</cite>'
	);
});

Handlebars.registerHelper('caps', function(name) {
	return new Handlebars.SafeString(
		'<cite class="tune">' +
			Handlebars.Utils.escapeExpression(name) +
		'</cite>'
	);
});

Metalsmith(__dirname)
	.source('content')
	.destination('build')
	.use(weekMetadata)
	.use(rename('session-*/week-*/notes.md', 'leader'))
	.use(rename('session-*/week-*/notes.md', 'participant'))
	.use(
		collections({
			sessions: {
				pattern: 'session-*/overview.md',
				sortBy: 'session'
			},
			weeks: {
				pattern: 'session-*/week-*/notes.md',
				sortBy: 'week'
			}
		})
	)
	.use(
		fileMetadata([
			{
				pattern: 'session-*/overview.md',
				metadata: {
					layout: 'session.hbt'
				}
			},
			{
				pattern: 'session-*/week-*/notes.md',
				metadata: {
					layout: 'notes.hbt',
					notes: true
				}
			},
			{
				pattern: 'session-*/week-*/leader.md',
				metadata: {
					pdf: true,
					notes: true
				}
			},
			{
				pattern: 'session-*/week-*/participant.md',
				metadata: {
					pdf: true,
					notes: false
				}
			}
		])
	)
	.use(nestedCollections)
	.use(
		branch()
			.pattern('**/*.md')
			.use(assignLayouts)
			.use(templates('handlebars'))
			.use(
				markdown({
					breaks: true,
					smartypants: true,
				})
			)
			.use(
				layouts({
					engine: 'handlebars',
					partials: 'partials'
				})
			)
	)
	.use(sass({ outputStyle: 'compressed' }))
	.use(lilypond)
	.use(branchPdf)
	.build(function(err, files) {
		if (err) {
			console.error(err);
			process.exit(1);
		}
		else {
			console.log('Build successful.');
		}
	});

function weekMetadata(files, metalsmith, done) {
	var match;
	var metadata;

	var session = /session-(\d+)/;
	var week = /week-(\d+)/;

	for (var file in files) {
		metadata = files[file];
		metadata.folder = (
			path.normalize(path.dirname(file))
				.replace(path.sep, '/')
				.replace(/^\//, '')
		);

		match = file.match(session);

		if (match) {
			metadata.session = parseInt(match[1], 10);
		}

		match = file.match(week);

		if (match) {
			metadata.week = parseInt(match[1], 10);
		}
	}

	done();
}

function assignLayouts(files, metalsmith, done) {
	var data;

	for (var file in files) {
		data = files[file];

		if (data.pdf) {
			data.layout = 'pdf.hbt';
		}
	}

	done();
}

function branchPdf(files, metalsmith, done) {
	if (options.skipPdf) {
		done();
		return;
	}

	var sources = [];

	var portrait = {
		files: {}
	};

	var landscape = {
		files: {},
		params: {
			orientation: 'Landscape'
		}
	};

	var data;
	var ext;

	for (var file in files) {
		data = files[file];
		ext = path.extname(file);

		if (data.pdf) {
			sources.push(file);
			(data.landscape ? landscape : portrait).files[file] = true;
		}
		else if ('.css' === ext || '.png' === ext) {
			landscape.files[file] = true;
			portrait.files[file] = true;
		}
	}

	async.each(
		[portrait, landscape],
		function(fileSet, callback) {
			makePdfs(fileSet, files, metalsmith, callback);
		},
		function(err) {
			if (err) {
				console.error(err);
				done(err);
			}
			else {
				sources.forEach(function(file) {
					delete files[file];
				});

				done();
			}
		}
	);
}

function makePdfs(fileSet, files, metalsmith, done) {
	branch(function(file) {
		return fileSet.files[file];
	})
	.use(pdf(fileSet.params))
	.call(this, files, metalsmith, done);
}

function rename(pattern, name) {
	return copy({
		pattern: pattern,
		transform: function(file) {
			return path.join(path.dirname(file), name + path.extname(file));
		}
	});
}

function nestedCollections(files, metalsmith, done) {
	var weeks = metalsmith.metadata().collections.weeks;

	_.each(
		files,
		function(file, name) {
			if (file.layout === 'session.hbt') {
				file.weeks = _.filter(weeks, 'session', file.session);
			}
		}
	)

	done();
}

function lilypond(files, metalsmith, done) {
	if (options.skipLilypond) {
		done();
		return;
	}

	var lys = [];

	for (var file in files) {
		var ext = path.extname(file);

		if ('.ly' === ext) {
			var format = files[file].format || 'pdf';
			var dir = path.dirname(file);
			var dest = path.basename(file, ext) + '.' + format;

			if ('.' != dir) {
				dest = path.join(dir, dest);
			}

			lys.push({
				src: file,
				dest: dest,
				format: format,
				contents: files[file].contents
			});
		}
	}

	async.each(
		lys,
		function(item, callback) {
			var tempFile = temp.path() + '.ly';
			fs.writeFileSync(tempFile, item.contents);

			lilynode.renderFile(
				tempFile,
				{
					format: item.format,
					binaryPath: './vendor/bin/lilypond'
				},
				function(err, output) {
					fs.unlinkSync(tempFile);

					if (err) {
						console.error(err);
						callback(err);
					}
					else {
						delete files[item.src];
						files[item.dest] = {
							contents: output
						};
						callback();
					}
				}
			);
		},
		done
	);
}
