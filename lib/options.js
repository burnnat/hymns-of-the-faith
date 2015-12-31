var _ = require('lodash');
var jsonfile = require('jsonfile');

var options = {
	skipLilypond: false,
	skipPdf: false,
	lilypondPath: null
};

var overrides = jsonfile.readFileSync(
	'options.json',
	{ throws: false }
);

_.each(
	overrides,
	function(value, key) {
		options[key] = value;
	}
);

module.exports = options;
