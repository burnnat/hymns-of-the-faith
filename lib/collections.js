var _ = require('lodash');

module.exports = function(files, metalsmith, done) {
	var weeks = metalsmith.metadata().collections.weeks;

	_.each(
		files,
		function(file, name) {
			if (file.layout === 'session.hbt') {
				file.weeks = _.filter(weeks, { session: file.session });
			}
		}
	)

	done();
};
