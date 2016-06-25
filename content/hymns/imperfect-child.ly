\include "hymn.ily"

\header
{
  title = "Imperfect Child of Perfect God"
  poet = "N. Fielding Burns, 2010"
  composer = "N. Fielding Burns, 2010"
}

global =
{
  \time 4/4
  \key g \major
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Im -- per -- fect child of per -- _ fect _ God,
    I’m guid -- ed from a -- bove;
    I glad -- ly yield my cold, _ hard, _ heart
    to His warm, pa -- tient _ love.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Though I have ears to hear _ the _ Word,
    it’s on -- ly through God's grace
    my fool -- ish thoughts and stum -- _ bling _ feet
    don't slow me in the _ race.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    How strange that I should stand _ to _ gain
    from my dear sav -- ior's death:
    a schem -- er, sin -- ner, wick -- _ ed _ me
    giv’n new life by His _ breath!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    And as I dai -- ly rise _ with _ Christ
    and die with Him the same,
    I count my fame and wealth _ but _ loss
    for naught but Christ is _ gain!
  }
>>

soprano = \relative c' {
  g'4
  e a fis d'
  \time 2/4
  d8 c b a
  \time 4/4
  g2.

  g4
  e g fis g
  a2.

  \linebreak

  b4
  g c b d
  \time 2/4
  d8 c b a
  \time 4/4
  a4( g2)

  g4
  d g a g8 fis
  g2.
}

alto = \relative c' {
  d4
  c e d fis
  e fis
  fis( e2)

  d4
  c e d e
  d2.

  fis4
  e d d8 e fis4
  e fis8 d
  ees2.

  ees4
  d e fis d
  d2.
}

tenor = \relative c' {
  g4
  g c a a
  g c
  b2.

  g4
  g c8 b a4 g
  g2( fis4)

  a4
  g a b a
  g c
  bes2.

  c4
  b c a8 b c4
  b2.
}

bass = \relative c {
  b4
  c8 b a4 d b
  c d
  e2.

  b4
  c a b e
  d2.

  dis4
  e fis g
  b, c d
  ees2.

  a,4
  b e d d
  g,2.
}

\include "hymn-template.ily"