var _ = require('lodash');

var options = require('./options');

module.exports = function(files, metalsmith, done) {
	var week = options.week;
	var metadata;
	var keeper;

	if (week) {
		for (var file in files) {
			metadata = files[file];

			if (_.has(metadata, 'session') && _.has(metadata, 'week')) {
				keeper = metadata.session === week[0] && metadata.week === week[1];
			}
			else {
				keeper = options.buildStatic;
			}

			if (!keeper) {
				delete files[file];
			}
		}
	}

	done();
};
