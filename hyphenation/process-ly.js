var readline = require('readline');
var fs = require('fs');

var input = readline.createInterface({
	input: fs.createReadStream('mhyph.txt', { encoding: 'utf8' })
});

var output = fs.createWriteStream('hyph_custom.dic', { flags: 'w' });

var dict = {};
var syllable = /\uFFFD/g;

input.on('line', function(line) {
	var raw = line.replace(syllable, '');

	var indexes = [];
	var match;

	while (match = syllable.exec(line)) {
		indexes.unshift(match.index - indexes.length);
	}

	dict[raw] = indexes;
});

var file = process.argv[2];

if (!file) {
	console.error('The file to process must be specified as a command-line argument.');
	return;
}

var encoding = 'utf8';

var insertAt = function(string, index, value) {
	return string.slice(0, index) + value + string.slice(index);
};

input.on('close', function() {
	var contents = fs.readFileSync(file, { encoding: 'utf8' });

	contents = contents.replace(
		/(\\new Lyrics[\s\S]*?\{(?:\s*?\\.+\r?\n)*)([\s\S]*?)(\})/g,
		function(match, start, words, end) {
			var hyphenated = words.replace(
				/\b(?:\w| -- )+\b/g,
				function(raw) {
					var word = raw.replace(/ -- /g, '');
					var indexes = dict[word.toLowerCase()];

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

	fs.writeFileSync(file, contents, { encoding: 'utf8' });
});
