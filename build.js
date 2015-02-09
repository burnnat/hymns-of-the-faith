var fs = require('fs');
var path = require('path');
var async = require('async');
var Metalsmith = require('metalsmith');
var markdown = require('metalsmith-markdown');
var lilynode = require('lilynode');
var temp = require('temp');

Metalsmith(__dirname)
	.source('content')
	.destination('build')
	.use(markdown())
	.use(lilypond)
	.build(function(err, files) {
		if (err) {
			console.error(err);
		}
		else {
			console.log('Build successful.');
		}
	});

function lilypond(files, metalsmith, done) {
	var lys = [];

	for (var file in files) {
		var ext = path.extname(file);

		if ('.ly' === ext) {
			var dir = path.dirname(file);
			var dest = path.basename(file, ext) + '.pdf';

			if ('.' != dir) {
				dest = dir + '/' + dest;
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
