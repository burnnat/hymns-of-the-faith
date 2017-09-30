process.env.DEBUG = '*';

var path = require('path');

var extname = require('path-complete-extname');
var Metalsmith = require('metalsmith');
var branch = require('metalsmith-branch');
var collections = require('metalsmith-collections');
var copy = require('metalsmith-copy');
var debug = require('metalsmith-debug');
var fileMetadata = require('metalsmith-filemetadata');
var layouts = require('metalsmith-layouts');
var markdown = require('metalsmith-markdown');
var templates = require('metalsmith-in-place');
var sass = require('metalsmith-sass');

var Handlebars = require('./lib/handlebars');
var customMetadata = require('./lib/metadata');
var customCollections = require('./lib/collections');
var changes = require('./lib/changes');
var exclude = require('./lib/exclude');
var lilypond = require('./lib/lilypond');
var pdf = require('./lib/pdf');

var metalsmith = Metalsmith(__dirname)
	.source('content')
	.destination('build');

changes.setup(metalsmith);

metalsmith
	.use(debug({ files: false }))
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
			}
		])
	)
	.use(customCollections)
	.use(
		branch()
			.pattern('**/*.md.hbs')
			.use(assignLayouts)
			.use(
				templates({
					engineOptions: {
						breaks: true,
						html: true,
						typographer: true
					}
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
			return path.join(path.dirname(file), name + extname(file));
		}
	});
}
