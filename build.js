var fs = require('fs');
var path = require('path');
var async = require('async');
var Metalsmith = require('metalsmith');
var branch = require('metalsmith-branch');
var copy = require('metalsmith-copy');
var markdown = require('metalsmith-markdown');
var templates = require('metalsmith-in-place');
var layouts = require('metalsmith-layouts');
var lilynode = require('lilynode');
var temp = require('temp');

Metalsmith(__dirname)
	.source('content')
	.destination('build')
	.use(weekMetadata)
	.use(rename('*/notes.md', 'leader'))
	.use(rename('*/notes.md', 'participant'))
	.use(branchTemplate('notes', true))
	.use(branchTemplate('leader', true))
	.use(branchTemplate('participant', false))
	.use(markdown())
	.use(templates('handlebars'))
	.use(layouts('handlebars'))
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

function rename(pattern, name) {
	return copy({
		pattern: pattern,
		transform: function(file) {
			return path.join(path.dirname(file), name + path.extname(file));
		}
	});
}

function branchTemplate(layout, showNotes) {
	return (
		branch('*/' + layout + '.md')
			.use(
				function(files, metalsmith, done) {
					for (var file in files) {
						files[file].layout = layout + '.hbt';
						files[file].showNotes = showNotes;
					}

					done();
				}
			)
	);
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
