\include "hymn.ily"

\header
{
  title = "Incarnation Carol"
  poet = "N. Fielding Burns, 2015"
  composer = "N. Fielding Burns, 2015"
  tune = "Trias Ekenosen"
  meter = "10.8.11.8"
}

global =
{
  \time 3/4
  \key d \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Fa -- ther al -- might -- y made emp -- ty in flesh,
    Je -- su, Em -- man -- u -- el, Christ -- us,
    we praise you, cre -- a -- tor, born con -- queror of death,
    God yet be -- fore us, now with us.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Born Prince of Peace in a loud, hec -- tic world,
    few would ac -- knowl -- edge or no -- tice;
    Lord, aid us, your whis -- pers of grace to be heard,
    com -- fort and calm and sus -- tain us.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Je -- sus, your pres -- ence is all we re -- quire,
    bright, shin -- ing Light for our dark -- ness.
    Come, guide us with pil -- lars of cloud and of fire,
    Spir -- it, with -- in and a -- mong us.
  }
>>

soprano =\relative c' {
  d4 d e
  d d a'
  b a g
  a2.

  b4 cis d
  d a d,

  fis e2~
  e

  \bar "" \break

  fis4
  fis fis4. e8
  d4 d a'
  b cis d
  e2.

  d4 a4. g8
  fis4 a d,
  e2.
  d2.

  \bar "|."
}

alto = \relative c' {
  b4 b cis
  d d fis
  g fis e
  e( d2)

  d4 d4. e8
  fis4 d b
  b2 d4~(
  d cis)

  cis
  d d cis
  d d fis
  g a b
  a2.

  fis4 d4. d8
  d4 e d
  b cis2
  a2.
}

tenor = \relative c {
  fis4 fis a
  fis fis a
  d b b
  a2.

  g4 a a
  a a fis
  e2.
  e2

  fis4
  fis b a
  fis a c
  d d d
  b2( cis4)

  d fis,4. g8
  a4 fis a
  g2.
  fis2.
}

bass = \relative c {
  b4 b a
  d d d
  g, g g
  fis2.

  g4 g g
  fis fis b
  gis2.
  a2

  ais4
  b b cis
  d fis a
  g fis f
  e2.

  d4 d4. b8
  a4 a fis
  g a2
  d2.
}

\include "hymn-template.ily"
