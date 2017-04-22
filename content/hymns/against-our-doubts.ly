\include "hymn.ily"

\header
{
  title = "Biblical Portraits: Gideon"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Ophrah"
  meter = "8.8.8.8, refrain 8.8"
}

global =
{
  \time 4/4
  \key d \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    A -- gainst our doubts, the Lord pre -- vails
    and proves His sov -- ereign power and might.
    The God we fol -- low nev -- er fails
    in light of day nor dead of night.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    In heat of bat -- tle, tri -- umph stands
    out -- side of count or strength of arms,
    and rests in Him whose might -- y hands
    have led us safe -- ly out of harm.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    God res -- cued us, and yet we claim
    full cred -- it for His works of old;
    we wor -- ship not His ho -- ly name
    but grav -- en i -- dols, flesh and gold.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    O peo -- ple, now fore -- go your pride
    to crown a -- gain your God as king,
    and fol -- low Him, your heaven -- ly guide,
    and ev -- er -- more His prais -- es sing:
  }

  \new Lyrics \lyricsto "refrain" {
    Praise God, all peo -- ple; shout, pro -- claim
    His glor -- ious, ev -- er -- last -- ing reign!
  }
>>

soprano = \relative c' {
  \partial 2

  d2
  fis4 d a' a
  b cis d

  a4
  d cis b a
  \time 6/4
  b gis a2.

  \linebreak

  a4
  \time 4/4
  fis d a' a
  b b a

  % Quotes "Houston", tune for "I Want to Walk as a Child of the Light"
  % As refrain parallels first verse ("In Him there is no darkness at all / the night and the day are both alike")
  d,4
  fis e g fis
  e cis d2

  \linebreak
  \bar "||"
}

refrain = \relative c' {
  \markRefrain

  % Quotes "Old Hundredth" doxology ("Praise God from whom all blessings flow...")
  \time 6/4
  d'2
  d4 cis b a
  \time 4/4
  a g fis

  fis4
  e d g fis
  e cis d2

  \bar "|."
}

alto = \relative c' {
  d2
  d4 d e fis
  d e fis

  cis4
  fis e fis fis
  e e e2.

  e4
  d d cis cis
  d d d

  d4
  d e d d
  b a a2

  fis'2
  fis4 a g fis
  e cis d

  d4
  b b b8 cis d4
  b a a2
}

tenor = \relative c {
  fis2
  a4 fis a a
  b a a

  a4
  b a b cis
  d b cis2.

  a4
  a fis e a
  g g fis

  a4
  b a a a
  g g fis2

  a2
  a4 cis d a
  a a a

  a4
  g fis e d
  e g fis2
}

bass = \relative c {
  d2
  d4 d cis d
  g e d

  fis4
  b, cis d fis
  e e a,2.

  cis4
  d b a fis
  g8 a b cis d4

  fis4
  b, cis d d
  e a, d2

  d2
  d4 fis g d
  cis a d

  fis,4
  g b e, fis
  g a d2
}

\include "hymn-template.ily"
