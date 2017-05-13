\include "hymn.ily"

\header
{
  title = "Biblical Portraits: Zacchaeus"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Sycamore"
  meter = "10.6.10.6"
}

global =
{
  \time 3/4
  \key g \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Lord, I want to re -- ceive your gift of grace;
    my wealth is of no gain.
    May your rich -- es in spir -- it nev -- er cease
    and bless -- ings nev -- er wane.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Though de -- spised by my peers, you know my name
    and call me to your side;
    may your spir -- it and love for -- ev -- er in
    my home and heart a -- bide!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    To re -- store what my sin -- ful acts have cost
    to all those wronged by me,
    may my love be as yours, a four -- fold love
    of gen -- er -- os -- i -- ty.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Lord, to seek and to save the lost you came,
    sal -- va -- tion’s prom -- ise shown;
    may your life and your ho -- ly mis -- sion here
    through -- out the world be known.
  }
>>

soprano = \relative c' {
  \partial 4

  d8 d
  g4. g8 g4
  g2 a4
  b2 a4
  g2

  d4
  e2 g4
  g2 e4
  d2.~ d2

  \linebreak

  d8 d
  e4. e8 d4
  e2 fis4
  g2 g4
  a2

  g4
  d'2 c4
  b2 a4
  g2.~ g2

  \bar "|."
}

alto = \relative c' {
  d8 d
  b4. b8 c4
  d2 c4
  d2 c4
  b2

  a4
  b2 d4
  c2 a4
  a2.~ a2

  a8 b
  c4. c8 b4
  c2 d4
  d( c) b
  a2

  d4
  e2 e4
  g2 fis4
  d2.~ d2
}

tenor = \relative c {
  fis8 fis
  d4. d8 e4
  fis2 e4
  d2 e4
  fis2

  fis4
  g2 g4
  g2 g4
  g2.( fis2)

  fis8 fis
  g4. g8 g4
  g2 g4
  g2 g4
  g4( fis4)

  g4
  g2 a4
  b2 c4
  c2.( b2)
}

bass = \relative c {
  d8 d
  g,4. g8 g4
  g2 g4
  g2 g4
  g2

  b4
  c2 b4
  a2 c4
  d2( e4 d2)

  d8 d
  c4. c8 d4
  c2 b4
  a2 a4
  d2

  b4
  c2 c4
  d2 d4
  g,2.~ g2
}

\include "hymn-template.ily"
