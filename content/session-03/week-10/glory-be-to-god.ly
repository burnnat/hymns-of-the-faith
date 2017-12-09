\include "hymn.ily"

\header {
  title = "Glory Be To God On High"
  poet = "Charles Wesley"
  composer = ""
  tune = "Amsterdam"
  meter = "7.6.7.6.7.7.7.6"
}

global = {
  \time 4/4
  \key g \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Glory be to God on high,
    And peace on earth descend;
    Now God comes down, He bows the sky,
    And shows Himself our friend!
    God the invisible appears,
    God the blest, the great I AM,
    He sojourns in this vale of tears,
    And Jesus is His name.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Him by the angels all adored,
    Their maker and their king;
    Lo, tidings of their humbled Lord
    They now to mortals bring;
    Emptied of His majesty,
    Of His dazzling glories shorn,
    Our being’s Source begins to be,
    And God Himself is born!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    See the eternal Son of God
    A mortal Son of Man,
    Now dwelling in an earthly clod
    Whom Heaven cannot contain!
    Stand amazed, ye heavens, look at this!
    See the Lord of earth and skies
    Low humbled to the dust He is,
    And in a manger lies!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    So do the sons of men rejoice
    The Prince of Peace proclaim,
    With Heaven’s host lift up our voice,
    And shout Immanuel’s name;
    Our knees and hearts to Him we bow;
    Of our flesh, and of our bone,
    See—Jesus is our brother now,
    And God is all our own!
  }
>>

soprano = \relative c' {
  g'4 d g a
  b a b8 c d4
  e d c b
  a1

  \break

  g4 d g a
  b a b8 c d4
  e d c b
  a1

  \break

  d4 e d e
  d8 c b4 a2
  b4 a8 b c4 b
  a8 g a b a2

  \break

  g4 d g a
  b a b8 c d4
  e d8 c b4 a
  g1

  \bar "|."
}

alto = \relative c' {
  d4 d d fis
  g fis g g
  g g a g
  fis1

  d4 d d fis
  g fis g g
  g g a g
  fis1

  g4 g g g
  a g fis2
  g4 g a g
  e e fis2

  d4 d d fis
  g fis g g
  g g g fis
  g1
}

tenor = \relative c {
  b'4 b b c
  d d d8 c b4
  c d d d
  d1

  b4 b b c
  d d d8 c b4
  c d d d
  d1

  g,4 g b b
  d d d2
  d4 c8 d d4 d
  cis cis d2

  b4 b b c
  d d d d
  c e d d8 c
  b1
}

bass = \relative c {
  g'4 g b a
  g d g g
  c b fis g
  d1

  g4 g b a
  g d g g
  c b fis g
  d1

  b4 c g' e
  fis g d2
  g4 g fis g
  a a d,2

  g4 g b a
  g d g,8 a b4
  c c d d
  g1
}

\include "hymn-template.ily"
