var path = require('path');

module.exports = function(files, metalsmith, done) {
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
};
