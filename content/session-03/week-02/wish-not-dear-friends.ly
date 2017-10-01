\include "hymn.ily"

\header {
  title = "Wish Not, Dear Friends"
  poet = "John Keble, 1824"
  composer = "George J. Elvey, 1862"
  tune = "St. Crispin"
  meter = "8.8.8.8"
}

global = {
  \time 3/4
  \key e \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Wish not, dear friends, my pain a -- way;
    wish me a wise and thank -- ful heart,
    with God in all my griefs to stay,
    nor from His loved cor -- rec -- tion start.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    The dear -- est of -- fering He can crave
    His por -- tion in our souls to prove,
    what is it to the gift He gave,
    the on -- ly Son of His dear love?
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    In life’s long sick -- ness ev -- er -- more
    our thoughts are toss -- ing to and fro;
    we change our pos -- ture o’er and o’er,
    but can -- not rest, nor cheat our woe.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Were it not bet -- ter to lie still,
    let Him strike home, and bless the rod;
    nev -- er so safe, as when our will
    yields un -- dis -- cerned by all but God?
  }
>>

soprano = \relative c' {
  gis'4 gis gis
  b2 e,4
  fis2 fis4
  gis2.

  b4 b b
  e2 dis4
  cis2 cis4
  b2.

  \break

  b4 b b
  b2 gis4
  a2 a4
  a2.

  gis4 gis gis
  gis2 b4
  fis2 fis4
  e2.

  \bar "|."
}

alto = \relative c' {
  e4 e e
  e2 e4
  e2 dis4
  e2.

  fis4 gis fis
  e2 fis4
  gis( cis,) e
  dis2.

  dis4 dis dis
  eis2 eis4
  fis2 e4
  dis2.

  e4 e fis
  e2 e4
  e2 dis4
  e2.
}

tenor = \relative c {
  b'4 b b
  b2 gis4
  cis2 b4
  b2.

  b4 b b
  ais2 b4
  b2 ais4
  b2.

  gis4 gis gis
  gis2 cis4
  cis2 cis4
  b2.

  b4 b bis
  cis2 b4
  b2 a4
  gis2.
}

bass = \relative c {
  e4 e e
  gis,2 cis4
  a2 b4
  e2.

  dis4 e dis
  cis2 b4
  e4 fis2
  b,2.

  gis'4 gis gis
  cis,2 cis4
  fis2 fis4
  b,2.

  e4 e dis
  cis2 gis4
  b2 b4
  e2.
}

\include "hymn-template.ily"
