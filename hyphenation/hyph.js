var readline = require('readline');
var fs = require('fs');
var path = require('path');

var async = require('async');

var usageError = function() {
	console.error('Usage: node hyph.js [process <file.ly>|lookup <word>|add <word>].');
	process.exit(1);
};

var mode = process.argv[2];

if (!mode) {
	usageError();
}

var dict = {};

var cacheFile = path.join(__dirname, 'hyph.json');
var mobyFile = path.join(__dirname, 'mhyph.txt');
var customFile = path.join(__dirname, 'hyph-custom.txt');

var loadDictionaries = function(done) {
	console.log('Initializing hyphenation dictionary...');

	var encoding = 'utf8';

	try {
		var raw = fs.readFileSync(cacheFile, { encoding: encoding });

		console.log('Loading hyphenations from cache...');
		dict = JSON.parse(raw);
		done();
	}
	catch (e) {
		console.log('Processing hyphenations...');

		var readHyphens = function(file, syllable, callback) {
			var input = readline.createInterface({
				input: fs.createReadStream(file, { encoding: encoding })
			});

			input.on('line', function(line) {
				var raw = line.replace(syllable, '');

				var indexes = [];
				var match;

				while (match = syllable.exec(line)) {
					indexes.unshift(match.index - indexes.length);
				}

				dict[raw] = indexes;
			});

			input.on('close', callback);
		};

		var readMoby = readHyphens.bind(this, mobyFile, /\uFFFD/g);
		var readCustom = readHyphens.bind(this, customFile, /-/g);

		var writeJson = function(callback) {
			fs.writeFile(cacheFile, JSON.stringify(dict), { encoding: encoding }, callback);
		};

		async.series([
			readMoby,
			readCustom,
			writeJson,
			function() {
				done();
			}
		]);
	}
};

var insertAt = function(string, index, value) {
	return string.slice(0, index) + value + string.slice(index);
};

var hyphenate = function(raw) {
	var word = raw.replace(/ -- /g, '');
	var normalized = word.toLowerCase();
	var indexes = dict[normalized];

	if (!indexes) {
		normalized = normalized.replace(/e?s$/g, '');
		indexes = dict[normalized];
	}

	if (!indexes) {
		return raw;
	}
	else {
		return indexes.reduce(
			function(value, index) {
				return insertAt(value, index, ' -- ');
			},
			word
		);
	}
};

var processLilypond = function(callback) {
	var lilypond = process.argv[3];

	if (!lilypond) {
		usageError();
	}

	console.log('Processing input file...');

	var encoding = 'utf8';
	var contents = fs.readFileSync(lilypond, { encoding: encoding });

	var line = /(.*?)((?:%.*)?\r?\n)/g;

	contents = contents.replace(
		/(\\new Lyrics[\s\S]*?\{(?:\s*?\\.+\r?\n)*)([\s\S]*?)(\})/g,
		function(match, start, words, end) {
			var hyphenated = start;
			var submatch;

			while (submatch = line.exec(words)) {
				var lineStart = submatch[1];
				var lineEnd = submatch[2];

				hyphenated += lineStart.replace(
					/\b(?:\w| -- )+\b/g,
					hyphenate
				);

				hyphenated += lineEnd;
			}

			hyphenated += end;

			return hyphenated;
		}
	)

	fs.writeFile(lilypond, contents, { encoding: encoding }, callback);
};

var lookupWord = function(callback) {
	var word = process.argv[3];

	if (!word) {
		usageError();
	}

	console.log(hyphenate(word));
	callback();
};

var addWord = function(callback) {
	var word = process.argv[3];

	if (!word) {
		usageError();
	}

	fs.appendFileSync(customFile, word.toLowerCase() + require('os').EOL);
	fs.unlinkSync(cacheFile);

	callback();
};

var operations = {
	process: processLilypond,
	lookup: lookupWord,
	add: addWord
};

async.series([
	function(callback) {
		console.time('Completed in');
		callback();
	},
	loadDictionaries,
	operations[mode],
	function(callback) {
		console.timeEnd('Completed in');
		callback();
	},
]);
