var _ = require('lodash');

var options = require('./options');

module.exports = function(files, metalsmith, done) {
	var week = options.week;
	var metadata;
	var keeper;

	if (week) {
		for (var file in files) {
			metadata = files[file];

			keeper = (
				_.has(metadata, 'session') &&
				_.has(metadata, 'week') &&
				(metadata.session !== week[0] || metadata.week !== week[1])
			);

			if (keeper) {
				delete files[file];
			}
		}
	}

	done();
};
