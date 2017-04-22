\include "hymn.ily"

\header
{
  title = "Biblical Portraits: Simeon & Anna"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Temple Song"
  meter = "8.6.8.6 D"
}

global =
{
  \time 3/4
  \key d \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    A -- wait the Lord, you ti -- red tribes:
    de -- liv -- er -- ance He brings,
    the con -- so -- la -- tion giv -- en to
    His peo -- ple by their King.
    At last the Christ, pre -- sent -- ed now
    ac -- cord -- ing to His law
    in -- spir -- es those who know His fate
    to won -- der, hope, and awe.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Be still and know, His path is won
    through death for vic -- tory’s goal,
    and for those clos -- est to Him yet
    a sword will pierce their soul.
    As man -- y as shall rise with Him,
    so oth -- ers too will fall
    in judg -- ment and sal -- va -- tion here
    pre -- pared be -- fore us all.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Go tell the world what you have seen,
    this Light whom we a -- dore,
    for what use is a can -- dle to
    be hid be -- hind a door?
    Re -- joice! Praise be to God on high,
    whose king -- dom is at hand!
    Make known his peace in eve -- ry heart,
    and truth in eve -- ry land!
  }
>>

soprano = \relative c' {
  \partial 4

  d4
  a'8. g16 a4 b
  a8 g fis4 d
  b8 d fis4 g
  e2

  d4
  a'8. g16 a4 b
  a8 g fis4 d
  g8 fis e4 a
  d,2

  d4
  e8. d16 e4 g
  fis8 d e4 cis
  e8. d16 e4 fis
  g2

  d4
  b'8. a16 g4 b
  a8 g fis4 d
  g8 fis e4 a
  d,2

  \bar "|."
}

alto = \relative c' {
  d4
  fis8. e16 fis4 g
  cis,8 e d4 d
  b8 b d4 e
  cis2

  d4
  fis8. e16 fis4 g
  cis,8 e d4 a
  b8 b d4 cis
  d2

  d4
  cis8. b16 cis4 b
  a8 b cis4 a
  cis8. b16 cis4 d
  d2

  d4
  d8. d16 cis4 e
  fis8 e d4 d
  e8 d cis4 cis
  a2
}

tenor = \relative c {
  fis4
  a8. a16 a4 d
  a8 a a4 a
  g8 g a4 b
  a2

  fis4
  a8. a16 a4 d
  a8 a fis4 d
  d8 d a'4 g
  fis2

  fis4
  e8. e16 e4 e
  d8 fis a4 a
  g8. g16 g4 c
  c( b)

  a4
  g8. g16 e4 a
  a8 a a4 a
  b8 b a4 g
  fis2
}

bass = \relative c {
  d4
  d8. d16 d4 g,
  a8 a d4 fis
  g8 g fis4 e
  a,2

  d4
  d8. d16 d4 g,
  a8 a b4 fis
  g8 g a4 a
  d2

  d4
  a8. a16 a4 e
  fis8 b a4 a
  c8. c16 c4 a
  g2

  fis4
  g8. g16 a4 cis
  d8 e fis4 fis
  e8 e a,4 a
  d2
}

\include "hymn-template.ily"
