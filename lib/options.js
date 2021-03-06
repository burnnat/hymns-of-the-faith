var _ = require('lodash');
var jsonfile = require('jsonfile');

var options = {
	skipHymns: false,
	skipLilypond: false,
	skipPdf: false,
	changesOnly: false,
	lilypondPath: null
};

var overrides = {};

try {
	overrides = jsonfile.readFileSync('options.json');
}
catch (e) {
	// Okay if the file is missing or invalid, just move on...
}

_.each(
	overrides,
	function(value, key) {
		options[key] = value;
	}
);

process.argv.forEach(function(flag) {
	var key = flag.replace(/^--/, '');

	if (options[key] === false) {
		options[key] = true;
	}
});

module.exports = options;
