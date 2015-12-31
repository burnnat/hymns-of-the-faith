var path = require('path');
var Metalsmith = require('metalsmith');
var branch = require('metalsmith-branch');
var collections = require('metalsmith-collections');
var copy = require('metalsmith-copy');
var fileMetadata = require('metalsmith-filemetadata');
var markdown = require('metalsmith-markdown');
var templates = require('metalsmith-in-place');
var layouts = require('metalsmith-layouts');
var sass = require('metalsmith-sass');

var Handlebars = require('./lib/handlebars');
var customMetadata = require('./lib/metadata');
var customCollections = require('./lib/collections');
var lilypond = require('./lib/lilypond');
var pdf = require('./lib/pdf');

Metalsmith(__dirname)
	.source('content')
	.destination('build')
	.use(customMetadata)
	.use(rename('session-*/week-*/notes.md', 'leader'))
	.use(rename('session-*/week-*/notes.md', 'participant'))
	.use(
		collections({
			sessions: {
				pattern: 'session-*/overview.md',
				sortBy: 'session'
			},
			weeks: {
				pattern: 'session-*/week-*/notes.md',
				sortBy: 'week'
			}
		})
	)
	.use(
		fileMetadata([
			{
				pattern: 'session-*/overview.md',
				metadata: {
					layout: 'session.hbt'
				}
			},
			{
				pattern: 'session-*/week-*/notes.md',
				metadata: {
					layout: 'notes.hbt',
					notes: true
				}
			},
			{
				pattern: 'session-*/week-*/leader.md',
				metadata: {
					pdf: true,
					notes: true
				}
			},
			{
				pattern: 'session-*/week-*/participant.md',
				metadata: {
					pdf: true,
					notes: false
				}
			}
		])
	)
	.use(customCollections)
	.use(
		branch()
			.pattern('**/*.md')
			.use(assignLayouts)
			.use(templates('handlebars'))
			.use(
				markdown({
					breaks: true,
					smartypants: true,
				})
			)
			.use(
				layouts({
					engine: 'handlebars',
					partials: 'partials'
				})
			)
	)
	.use(sass({ outputStyle: 'compressed' }))
	.use(lilypond(path.join(__dirname, 'lily')))
	.use(pdf)
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
			return path.join(path.dirname(file), name + path.extname(file));
		}
	});
}
