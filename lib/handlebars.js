var Handlebars = require('handlebars');

var increment = function(amount) {
	return function() {
		var argcount = arguments.length;
		var options = arguments[argcount - 1];

		var key = argcount === 1 ? 'session' : 'week';
		var value = this[key] + amount;

		if (value < 1 || value > this.collections[key + 's'].length) {
			return '';
		}

		var context = {};
		context[key] = value < 10
			? '0' + value
			: '' + value;

		return options.fn(context);
	};
};

var addIndexEntry = function(context, indexName, value, options) {
	if (options.hash.index !== false) {
		context.indexes[indexName][value] = context.folder + '/notes.html#' + options.hash.id;
	}
};

Handlebars.registerHelper('previous', increment(-1));
Handlebars.registerHelper('next', increment(1));

Handlebars.registerHelper('trim', function(options) {
	return options.fn(this).replace(/[\t\r\n]/g, '');
});

Handlebars.registerHelper('repeat', function(n, block) {
	var result = '';

	for (var i = 0; i < n; ++i) {
		result += block.fn(i);
	}

	return new Handlebars.SafeString(result);
});

Handlebars.registerHelper('pagebreak', function() {
	return new Handlebars.SafeString('<div class="page-break"></div>');
});

Handlebars.registerHelper('line', function(indent, verse, options) {
	if (!options) {
		options = verse;
		verse = null;
	}

	return new Handlebars.SafeString(
		'<div class="indent-' + indent + '">'
			+ (verse
				? '<div class="verse-num">' + verse + '</div>'
				: '')
			+ options.fn(this)
		+ '</div>'
	);
});

Handlebars.registerHelper('hymn', function(name, options) {
	addIndexEntry(this, 'hymn', name, options);

	var url = 'https://www.hymnary.org/'
		+ (options.hash.type || 'text') + '/'
		+ options.hash.id;

	return new Handlebars.SafeString(`<a id="${options.hash.id}" href="${url}">${name}</a>`);
});

Handlebars.registerHelper('verse', function(verse, options) {
	var label = verse;

	if (options.hash.label) {
		label = options.hash.label;
	}

	var url = 'https://www.biblegateway.com/passage/?search=' + encodeURIComponent(verse);

	if (options.hash.translation) {
		url = url + '&version=' + encodeURIComponent(options.hash.translation);
	}

	return new Handlebars.SafeString('[' + label + '](' + url + ')');
});

Handlebars.registerHelper('book', function(name) {
	return new Handlebars.SafeString(
		'<cite class="book">' +
			Handlebars.Utils.escapeExpression(name) +
		'</cite>'
	);
});

Handlebars.registerHelper('caps', function(name) {
	return new Handlebars.SafeString(
		'<cite class="tune">' +
			Handlebars.Utils.escapeExpression(name) +
		'</cite>'
	);
});

Handlebars.registerHelper('ref', function(text, url) {
	// TODO: Add real footnotes from this info...
	return '';
});

module.exports = Handlebars;
