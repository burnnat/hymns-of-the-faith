process.env.DEBUG = '*';

var path = require('path');

var _ = require('lodash');
var extname = require('path-complete-extname');
var Metalsmith = require('metalsmith');
var branch = require('metalsmith-branch');
var collections = require('metalsmith-collections');
var copy = require('metalsmith-copy');
var debug = require('metalsmith-debug');
var metafiles = require('metalsmith-metafiles');
var fileMetadata = require('metalsmith-filemetadata');
var pathMetadata = require('metalsmith-paths');
var feed = require('metalsmith-feed');
var rawLayouts = require('metalsmith-layouts');
var markdown = require('metalsmith-markdown');
var rawTemplates = require('metalsmith-in-place');
var sass = require('metalsmith-sass');

var Handlebars = require('./lib/handlebars');
var customMetadata = require('./lib/metadata');
var customCollections = require('./lib/collections');
var changes = require('./lib/changes');
var exclude = require('./lib/exclude');
var lilypond = require('./lib/lilypond');
var pdf = require('./lib/pdf');

var templates = rawTemplates({
	engineOptions: {
		breaks: true,
		html: true,
		typographer: true
	}
});

var layouts = rawLayouts({
	engine: 'handlebars',
	partials: 'partials'
});

var metalsmith = Metalsmith(__dirname)
	.source('content')
	.destination('build');

changes.setup(metalsmith);

var site = {
	title: 'Hymns of the Faith',
	url: 'https://www.hymnsofthefaith.study',
	author: 'Nathaniel Burns'
};

metalsmith
	.metadata({ site })
	.use(debug({ files: false }))
	.use(metafiles())
	.use(pathMetadata({ property: 'paths' }))
	.use(customMetadata)
	.use(exclude)
	.use(rename('session-*/week-*/notes.html.md.hbs', 'leader'))
	.use(rename('session-*/week-*/notes.html.md.hbs', 'participant'))
	.use(
		collections({
			sessions: {
				pattern: 'session-*/overview.html.md.hbs',
				sortBy: 'session'
			},
			weeks: {
				pattern: 'session-*/week-*/notes.html.md.hbs',
				sortBy: 'week'
			},
			hymns: {
				pattern: 'hymns/*.ly',
				sortBy: 'title'
			}
		})
	)
	.use(
		fileMetadata([
			{
				pattern: 'session-*/overview.html.md.hbs',
				metadata: {
					layout: 'session.hbt'
				}
			},
			{
				pattern: 'session-*/week-*/notes.html.md.hbs',
				metadata: {
					layout: 'notes.hbt',
					notes: true
				}
			},
			{
				pattern: 'session-*/week-*/leader.html.md.hbs',
				metadata: {
					pdf: true,
					notes: true
				}
			},
			{
				pattern: 'session-*/week-*/participant.html.md.hbs',
				metadata: {
					pdf: true,
					notes: false
				}
			},
			{
				pattern: 'indexes/*.html.md.hbs',
				metadata: {
					layout: 'index.hbt'
				}
			}
		])
	)
	.use(customCollections)
	.use(
		branch('**/*.md.hbs')
			.use(assignLayouts)
			.use(
				branch((file, props, i) => props.folder !== 'indexes')
					.use(templates)
					.use(layouts)
			)
			.use(
				branch((file, props, i) => props.folder === 'indexes')
					.use(sortIndexes)
					.use(templates)
					.use(layouts)
			)
	)
	.use(sass({ outputStyle: 'compressed' }))
	.use(lilypond(path.join(__dirname, 'lily')))
	.use(pdf)
	.use(
		feed({
			collection: 'hymns',
			destination: 'feed/hymns.xml',
			preprocess: (file) => {
				const url = `${site.url}/hymns/${file.paths.name}.pdf`;

				return {
					title: file.title,
					url,
					description: `<a href="${url}">View PDF</a>`,
					date: file.date
				};
			}
		})
	)
	.build(function(err, files) {
		if (err) {
			console.error(err);
			process.exit(1);
		}
		else {
			console.log('Build successful.');
		}
	});


function assignLayouts(files, metalsmith, done) {
	var data;

	for (var file in files) {
		data = files[file];

		if (data.pdf) {
			data.layout = 'pdf.hbt';
		}
	}

	done();
}

function rename(pattern, name) {
	return copy({
		pattern: pattern,
		transform: function(file) {
			return path.join(path.dirname(file), name + extname(file));
		}
	});
}

function sortIndexes(files, metalsmith, done) {
	var data;

	for (var file in files) {
		data = files[file];

		data.entries = _.sortBy(
			_.map(
				data.indexes[data.index],
				(value, key) => ({
					value: key,
					refs: value
				})
			),
			['value']
		);

		if (data.pdf) {
			data.layout = 'pdf.hbt';
		}
	}

	done();
}
