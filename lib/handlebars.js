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

Handlebars.registerHelper('previous', increment(-1));
Handlebars.registerHelper('next', increment(1));

Handlebars.registerHelper('trim', function(options) {
	return options.fn(this).replace(/[\t\r\n]/g, '');
});

Handlebars.registerHelper('hymn', function(name, options) {
	var url = 'https://www.hymnary.org/'
		+ (options.hash.type || 'text') + '/'
		+ options.hash.id;

	return new Handlebars.SafeString('[' + name + '](' + url + ')');
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