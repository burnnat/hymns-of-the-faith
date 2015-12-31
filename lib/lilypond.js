var async = require('async');
var fs = require('fs');
var lilynode = require('lilynode');
var path = require('path');
var temp = require('temp');

var options = require('./options');

module.exports = function(includePath) {
	return function(files, metalsmith, done) {
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
						binaryPath: (
							(options.lilypondPath || './vendor/bin/lilypond')
							// HACK: since lilynode doesn't support arbitrary command arguments,
							// just append our include directory to the end of the binary path,
							// which will be interpreted as a separate argument by the shell.
							+ ' --include="' + includePath + '"'
						)
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
	};
};
