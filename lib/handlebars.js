var Handlebars = require('handlebars');

Handlebars.registerHelper('trim', function(options) {
	return options.fn(this).replace(/[\t\r\n]/g, '');
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

module.exports = Handlebars;
