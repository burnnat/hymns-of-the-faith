var readline = require('readline');
var fs = require('fs');
var path = require('path');

var async = require('async');

var lilypond = process.argv[2];

if (!lilypond) {
	console.error('The file to process must be specified as a command-line argument.');
	process.exit(1);
}

var dict = {};

var loadDictionaries = function(done) {
	var encoding = 'utf8';
	var cache = path.join(__dirname, 'hyph.json');

	try {
		var raw = fs.readFileSync(cache, { encoding: encoding });

		console.log('Loading hyphenations from cache...');
		dict = JSON.parse(raw);
		done();
	}
	catch (e) {
		console.log('Processing hyphenations...');

		var readHyphens = function(file, syllable, callback) {
			var input = readline.createInterface({
				input: fs.createReadStream(
					path.join(__dirname, file),
					{ encoding: encoding }
				)
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

		var readMoby = readHyphens.bind(this, 'mhyph.txt', /\uFFFD/g);
		var readCustom = readHyphens.bind(this, 'hyph-custom.txt', /-/g);

		var writeJson = function(callback) {
			fs.writeFile(cache, JSON.stringify(dict), { encoding: encoding }, callback);
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

var processLilypond = function(callback) {
	var encoding = 'utf8';
	var contents = fs.readFileSync(lilypond, { encoding: encoding });

	var line = /(.*?)((?:%.*)?\r?\n)/g;

	var insertAt = function(string, index, value) {
		return string.slice(0, index) + value + string.slice(index);
	};

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
					function(raw) {
						var word = raw.replace(/ -- /g, '');
						var normalized = word.toLowerCase();
						var indexes = dict[normalized];

						if (!indexes) {
							normalized = normalized.replace(/e?s$/g, '');
							indexes = dict[normalized];
						}

						if (!indexes) {
							return word;
						}
						else {
							return indexes.reduce(
								function(value, index) {
									return insertAt(value, index, ' -- ');
								},
								word
							);
						}
					}
				);

				hyphenated += lineEnd;
			}

			hyphenated += end;

			return hyphenated;
		}
	)

	fs.writeFile(lilypond, contents, { encoding: encoding }, callback);
};

var logAsync = function(message) {
	return function(callback) {
		console.log(message);
		callback();
	};
};

async.series([
	function(callback) {
		console.time('Completed in');
		callback();
	},
	logAsync('Loading hyphenation dictionaries...'),
	loadDictionaries,
	logAsync('Processing input file...'),
	processLilypond,
	function(callback) {
		console.timeEnd('Completed in');
		callback();
	},
]);
