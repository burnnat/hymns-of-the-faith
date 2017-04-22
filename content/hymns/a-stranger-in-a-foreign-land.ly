\include "hymn.ily"

\header
{
  title = "Biblical Portraits: Ruth"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Kinsman Redeemer"
  meter = "8.8.8.6"
}

global =
{
  \time 4/4
  \key e \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    A stran -- ger in a for -- eign land,
    my path is still as you have planned,
    O God, who through the a -- ges spanned;
    Your truth has drawn me in.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Now what you do, then I will do;
    and where you live, I live with You;
    and where you die, so I shall too:
    Your pres -- ence I will share.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Re -- deem -- er kins -- man, pit -- y me
    a -- midst my life of pov -- er -- ty.
    No more a stran -- ger I shall be;
    Your love will raise me up.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Re -- stored and nour -- ished, now I live!
    My work and wit -- ness, all to give
    passed down through fu -- ture lin -- e -- age,
    and great will be Your name!
  }
>>

soprano = \relative c' {
  \partial 4

  e4
  b' b b e,
  gis gis gis

  fis4
  e4. dis8 e4 a
  gis e fis

  \linebreak

  b,4
  b'4. b8 b4 cis
  b a gis

  e4
  fis e e dis
  e2.

  \bar "|."
}

alto = \relative c' {
  e4
  gis fis gis e
  fis dis e

  cis4
  b4. b8 b4 fis'
  e8 dis cis4 dis

  b4
  e4. dis8 e4 a
  gis fis e

  e4
  cis cis b b
  b2.
}

tenor = \relative c' {
  gis4
  b b b a
  gis gis gis

  a4
  gis4. fis8 gis4 cis
  b ais b

  b4
  b4. b8 b4 e
  e dis cis

  b4
  a gis fis fis8 a
  gis2.
}

bass = \relative c {
  e4
  e dis e cis
  dis bis cis

  a4
  b4. b8 b4 fis
  gis cis b

  b4
  gis4. fis8 gis4 a
  b bis cis

  gis4
  a cis b b
  e2.

}

\include "hymn-template.ily"
