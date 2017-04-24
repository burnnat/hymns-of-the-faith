var readline = require('readline');
var fs = require('fs');

var async = require('async');

var lilypond = process.argv[2];

if (!lilypond) {
	console.error('The file to process must be specified as a command-line argument.');
	process.exit(1);
}

var dict = {};

var readHyphens = function(file, syllable, callback) {
	var input = readline.createInterface({
		input: fs.createReadStream(file, { encoding: 'utf8' })
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


var insertAt = function(string, index, value) {
	return string.slice(0, index) + value + string.slice(index);
};

var processLilypond = function(callback) {
	var encoding = 'utf8';
	var contents = fs.readFileSync(lilypond, { encoding: encoding });

	contents = contents.replace(
		/(\\new Lyrics[\s\S]*?\{(?:\s*?\\.+\r?\n)*)([\s\S]*?)(\})/g,
		function(match, start, words, end) {
			var hyphenated = words.replace(
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

			return start + hyphenated + end;
		}
	)

	fs.writeFile(lilypond, contents, { encoding: encoding }, callback);
};

async.series([
	readMoby,
	readCustom,
	processLilypond
]);
