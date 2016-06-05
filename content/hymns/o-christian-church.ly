\include "hymn.ily"

\layout {
  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #25
  }
}

\header
{
  title = "O Christian Church"
  poet = \markup \poet "Hymns of the Faith Class, 2016"
  composer = \markup \composer "Traditional English"
}

global =
{
  \time 4/4
  \key e \minor
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    O _ Chris -- tian church a -- cross the globe,
    who _ in God's word _ u -- nite,
    al -- _ though from lands so far a -- way
    still _ glimpse His guid -- _ ing light,
    whom _ Christ has tak -- _ en as His bride,
    all _ na -- tions _ to give praise;
    in _ all the ways _ you _ serve the Lord,
    join _ all your hands _ to raise.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    O _ Chris -- tian neigh -- bors, sib -- lings, friends,
    salt _ of the earth _ u -- nite,
    and _ strive as one to show God's ways
    with _ all His pow'r _ and might.
    With _ one strong voice, _ to -- geth -- er claim
    the _ pro -- mise _ of the King:
    that _ He will sure -- _ ly _ see you through,
    to _ grow, re -- joice, _ and sing.
  }
>>

soprano = \relative c' {
  g'8 fis
  e4 e e d
  g g a g8 a
  b4 b a8 g e4
  d2.

  \linebreak

  g8 fis
  e4 e e d
  g g a g8 a
  b4 b a8 g e4
  e2.

  \linebreak

  b'8 c
  d4 b b8 a g4
  a a b g8 a
  b4 b8 a g4 e
  d2.

  \linebreak

  g8 fis
  e4 e e8 d e fis
  g4 g a g8 a
  b4 b a8 g e4
  e2.
}

alto = \relative c' {
  e4
  b b c a
  d b d d8 fis
  g4 g e c
  a2.

  d4
  d c c8 b a4
  d cis d d8 c
  b4 d c c
  b2.

  e4
  fis fis g8 d d4
  e d d d8 fis
  g4 g8 fis d4 c8 b
  a2.

  d4
  d d c c
  d d8 cis d4 d8 c
  b4 d e c
  b2.
}

tenor = \relative c' {
  b8 a
  g4 g g fis
  g g fis g8 c
  b4 d c g
  g2( fis4)

  g4
  g g g fis
  g g fis g8 fis
  g4 g e e8 fis
  g2.

  g4
  b d d8 c b4
  a8 g fis4 g
  d'8 c d4 d8 c b4 g4
  g2( fis4)

  g4
  g g a c
  b8 a g4 fis g8 fis
  g4 fis e e8 fis
  gis?2.
}

bass = \relative c {
  e4
  e e8 d c4 c
  b e d b8 a
  g4 g a c
  d2.

  b4
  c c8 b a4 d
  b e d8 c b a
  g4 b c a
  e'2.

  e4
  b b' e,8 fis g4
  c, d g, b8 a
  g4 g8 a b4 c
  d2.

  b4
  c c8 b a4 a'
  g8 fis e4 d b8 a
  g4 b c a
  e'2.
}

\include "hymn-template.ily"