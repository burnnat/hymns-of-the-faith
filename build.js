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
var ignore = require('metalsmith-ignore');
var templates = require('metalsmith-in-place');
var layouts = require('metalsmith-layouts');
var pdf = require('metalsmith-pdf');
var lilynode = require('lilynode');
var temp = require('temp');

Handlebars.registerHelper('trim', function(options) {
	return options.fn(this).replace(/[\t\r\n]/g, '');
});

Handlebars.registerHelper('verse', function(verse, translation) {
	var url = 'https://www.biblegateway.com/passage/?search=' + encodeURIComponent(verse);

	if (arguments.length === 3) { // Handlebars passes an extra final argument
		url = url + '&version=' + encodeURIComponent(translation);
	}

	return new Handlebars.SafeString('[' + verse + '](' + url + ')');
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
		'<span style="font-variant:small-caps">' +
			Handlebars.Utils.escapeExpression(name) +
		'</span>'
	);
});

Metalsmith(__dirname)
	.source('content')
	.destination('build')
	.use(weekMetadata)
	.use(rename('*/notes.md', 'leader'))
	.use(rename('*/notes.md', 'participant'))
	.use(
		collections({
			weeks: {
				pattern: '*/notes.md',
				sortBy: 'week'
			}
		})
	)
	.use(
		fileMetadata([
			{
				pattern: '*/notes.md',
				metadata: {
					layout: 'notes.hbt',
					notes: true
				}
			},
			{
				pattern: '*/leader.md',
				metadata: {
					pdf: true,
					notes: true
				}
			},
			{
				pattern: '*/participant.md',
				metadata: {
					pdf: true,
					notes: false
				}
			}
		])
	)
	.use(assignLayouts)
	.use(templates('handlebars'))
	.use(
		markdown({
			breaks: true,
			smartypants: true,
		})
	)
	.use(layouts('handlebars'))
	.use(branchPdf)
	.use(lilypond)
	.build(function(err, files) {
		if (err) {
			console.error(err);
		}
		else {
			console.log('Build successful.');
		}
	});

function weekMetadata(files, metalsmith, done) {
	var match;
	var parser = /week-(\d+)/;

	for (var file in files) {
		match = file.match(parser);

		if (match) {
			files[file].week = match[1];
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

	for (var file in files) {
		data = files[file];

		if (data.pdf) {
			sources.push(file);
			(data.landscape ? landscape : portrait).files[file] = true;
		}
		else if ('.css' === path.extname(file)) {
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

function lilypond(files, metalsmith, done) {
	var lys = [];

	for (var file in files) {
		var ext = path.extname(file);

		if ('.ly' === ext) {
			var dir = path.dirname(file);
			var dest = path.basename(file, ext) + '.pdf';

			if ('.' != dir) {
				dest = path.join(dir, dest);
			}

			lys.push({
				src: file,
				dest: dest,
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
				{ format: 'pdf' },
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
