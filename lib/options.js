var options = {
	skipLilypond: false,
	skipPdf: false
};

process.argv.forEach(function(flag) {
	options[flag.replace(/^--/, '')] = true;
});

module.exports = options;
