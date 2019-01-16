\include "hymn.ily"

\header
{
  title = "Lord of the Dawn"
  poet = "N. Fielding Burns, 2018"
  composer = "N. Fielding Burns, 2018"
  tune = "New Dawn"
  meter = "9.11.10.11, refrain 8"
}

global =
{
  \time 3/4
  \key c \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Lord of the dawn brought forth from each night,
    the whole of the world is sus -- tained by Your might. % Hebrews 1:3
    The birds of the air, the beasts of the plain,
    each day eat Your grass -- es and drink of Your rain. __ % Psalm 104:10-12
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    You knit in place each child in the womb, % Psalm 139:13
    You bring out the splen -- dor of lil -- ies in bloom, % Luke 12:27
    the small -- est of seeds be -- comes a great tree; % Mattew 13:32
    all grow by Your fa -- vor, and Lord, so may we! __
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Come eat and drink the fruit of His love,
    the gift of His first -- born Son sent from a -- bove. % Colossians 1:14-15, John 3:16
    Ob -- tained at such cost, re -- ceived with -- out price,
    what trans -- form -- ing pow -- er of heav -- en -- ly grace! __
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Lord, rend my heart and cleanse it of sin;
    may mer -- cy and good -- ness and truth en -- ter in! % Psalm 23:6
    Re -- new now my mind, and cast out my fear, % Romans 12:2, 1 John 4:18
    with -- in me a new -- made cre -- a -- tion ap -- pear! __ % 2 Corinthians 5:17
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    The trump shall sound His glo -- ri -- ous day % 1 Corinthians 15:52
    when earth as we know it will soon pass a -- way. % Revelation 21:1
    New heav -- en, new earth! An an -- gel -- filled throng
    will add to our cho -- rus a new -- writ -- ten song: __ % Psalm 96:1, Revelation 5:9, Revelation 14:3
  }

  \new Lyrics \lyricsto "refrain" {
    Our God is mak -- ing all things new! __ % Revelation 21:5
  }
>>

soprano = \relative c' {
  \partial 4

  c4
  e2 f4
  g2 g4
  a g f
  g2

  g4
  c, c e
  g g
  \linebreak
  c,
  f e c
  d2

  d4
  e e f
  g2 g4
  a a b
  c2

  \linebreak

  c4
  d c d
  c a f
  bes a f
  g2.~ g2

  \linebreak
  \bar "||"
}

refrain = \relative c' {
  \markRefrain

  g'4
  c,2 c4
  \time 6/4
  c f e2 d % The bass line from a measure earlier becomes the melody, and the subverted cadence becomes final - transformed as a "new creation" of sorts
  \time 3/4
  c2.~ c2

  \bar "|."
}

alto = \relative c' {
  c4
  c2 c4
  d( c) b
  c c a
  d2

  d4
  c4 c c
  d c b
  a c c
  c2

  b4
  c c c
  d( c) b
  c f gis
  a2

  a4
  f f f
  f f f
  f f d
  d2.~ d2

  d4
  c2 c4
  c c c2 b
  g2.~ g2
}

tenor = \relative c {
  g'4
  g2 g4
  g2 g4
  a b c
  c2

  b4
  c e, g
  e e e
  f a f
  g2

  g4
  g g g
  g2 g4
  a c e
  e2

  e4
  d e d
  c c c
  bes c a
  c2.( b?2)

  b4
  g2 f4
  e f g2 f
  e2.~ e2
}

bass = \relative c {
  g'4
  c,2 d4
  e2 e4
  f f f
  g2

  g4
  c, c b
  a a g
  f f a
  g2

  g4
  c c d
  e2 e4
  f f e
  a2

  a4
  bes bes bes
  a f e
  d d a
  g2.( g'2)

  f4
  e2 d4
  c a g2 g
  c2.~ c2
}

\include "hymn-template.ily"
