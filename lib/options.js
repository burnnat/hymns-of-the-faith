var _ = require('lodash');
var jsonfile = require('jsonfile');

var options = {
	skipLilypond: false,
	skipPdf: false,
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

module.exports = options;
