var changed = require('metalsmith-changed');

var options = require('./options');

module.exports = {
	setup: function(metalsmith) {
		if (options.changesOnly) {
			return (
				metalsmith
					.clean(false)
					.use(
						changed({
							extnames: {
								'.md': '.html',
								'.ly': '.pdf'
							}
						})
					)
			);
		}
		else {
			return metalsmith;
		}
	}
};
