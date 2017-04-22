\include "hymn.ily"

\header
{
  title = "Lord, You Lead to Fields of Green"
  poet = "N. Fielding Burns, 2015"
  composer = "N. Fielding Burns, 2016"
  tune = "Jollity"
  meter = "7.6.7.6D"
}

global =
{
  \time 3/4
  \key ees \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Lord, you lead to fields of green
    and crys -- tal wa -- ters fresh;
    here I find my soul re -- stored,
    and for my bod -- y, rest.

    From Your cool -- ing stream I'll drink,
    and in Your pas -- _ ture _ feed.
    Noth -- ing more do I re -- quire;
    Your flock has all I need.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Dare I en -- ter death's dark path,
    where none but brave souls trod?
    Yes! For You are with me still,
    my Guid -- ance, Shep -- herd God.

    Hid -- den com -- fort, qui -- et calm,
    Your work -- ings are _ to _ me,
    pre -- sent peace, and fu -- ture hope,
    poured out a -- bun -- dant -- ly.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Far I run and hide my -- self
    in leaves of fear and shame;
    far -- ther still You seek me out,
    for fur -- th’rance of Your name.

    Chased by good -- ness, caught by grace,
    how -- ev -- er far _ I _ flee,
    al -- ways shall I dwell with You
    and al -- ways You with me.
  }
>>

soprano = \relative c' {
  ees8 g aes4 bes
  bes8 g f4 g
  aes8 g~ g f~ f ees
  \time 2/4
  f2

  \break

  \time 3/4
  ees8 g aes4 bes
  bes8 aes ees4 g
  f8 ees ees4 d
  ees2

  \linebreak

  bes'8 g
  f4 f ees8 g
  \time 2/4
  f4 bes,
  \time 4/4
  bes'4. aes8 g f g bes
  \time 3/4
  c2.

  \break

  bes8 g g4 ees
  f8 ees f4 g
  f8 ees ees4 d
  ees2.
}

alto = \relative c' {
  bes8 ees f4 f
  g8 ees d4 ees
  c8 c c4 c
  ees4( d)

  ees8 ees f4 f
  ees8 ees ees4 ees
  bes8 bes bes4 bes
  bes2

  ees8 ees d4 d
  ees8 ees d4 bes
  ees4. d8 ees4 ees4
  ees2.

  g8 ees ees4 c
  d8 c d4 ees
  c8 c bes4 bes
  bes2.
}

tenor = \relative c' {
  g8 bes c4 d
  ees8 bes bes4 bes
  aes8 aes f4 f
  f2

  g8 bes c4 des
  des8 c c4 g
  g8 g f4 f
  g2

  g8 g bes4 bes
  c8 c bes4 bes
  bes bes bes c
  c2.

  ees8 bes bes4 g
  f8 f f4 bes
  f8 f f4 f
  g2.
}

bass = \relative c {
  ees8 ees ees4 ees
  ees8 g bes4 ees,
  aes,8 aes a4 a
  bes2

  ees8 ees ees4 ees
  aes,8 aes aes4 c
  bes8 bes bes4 bes
  ees2

  ees8 g bes4 bes
  c8 c bes4 bes
  g f ees c
  aes( g f)

  g8 g g4 c
  bes8 bes bes4 g
  aes8 aes bes4 bes
  ees2.
}

\include "hymn-template.ily"
