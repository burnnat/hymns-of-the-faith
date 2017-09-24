var _ = require('lodash');
var async = require('async');
var branch = require('metalsmith-branch');
var path = require('path');
var pdf = require('metalsmith-pdf');

var options = require('./options');

// Set default wkhtmltopdf command to run with a headless X server. In order for
// this to work, we need to access the actual module instance used by metalsmith-pdf.
var wkhtmltopdf = require('wkhtmltopdf');
wkhtmltopdf.command = './vendor/bin/wkhtmltopdf';

function makePdfs(fileSet, files, metalsmith, done) {
	branch(function(file) {
		return fileSet.files[file];
	})
	.use(pdf(fileSet.params))
	.call(this, files, metalsmith, done);
}

var mimeTypes = {
	'.svg': 'image/svg+xml',
	'.woff': 'application/font-woff'
};

module.exports = function(files, metalsmith, done) {
	if (options.skipPdf) {
		done();
		return;
	}

	var sources = [];

	var portrait = {
		files: {},
		params: {
			zoom: 1.6,
			disableSmartShrinking: false,
			dpi: 96,
			pageSize: 'letter',
			footerCenter: 'http://www.hymnsofthefaith.study',
			footerFontSize: 8,
			footerSpacing: 5,
			marginBottom: 15
		}
	};

	if (process.platform === 'win32') {
		// Special settings for nice-looking PDFs on Windows.
		portrait.params.zoom = 1.6;
		portrait.params.disableSmartShrinking = false;
	}

	var landscape = {
		files: {},
		params: _.extend(
			{},
			portrait.params,
			{
				orientation: 'Landscape'
			}
		)
	};

	var data;
	var cleanFile;
	var ext;

	for (var file in files) {
		data = files[file];
		cleanFile = file.replace(path.sep, '/');

		delete files[file];
		files[cleanFile] = data;

		ext = path.extname(file);

		if (mimeTypes[ext]) {
			data.contentType = mimeTypes[ext];
		}

		if (data.pdf) {
			sources.push(cleanFile);
			(data.landscape ? landscape : portrait).files[cleanFile] = true;
		}
		else if ('.css' === ext || '.png' === ext || '.svg' === ext || '.woff' === ext) {
			landscape.files[cleanFile] = true;
			portrait.files[cleanFile] = true;
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
					// delete files[file];
				});

				done();
			}
		}
	);
};
