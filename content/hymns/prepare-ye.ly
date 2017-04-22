\include "hymn.ily"

\header
{
  title = "Prepare Ye"
  poet = "N. Fielding Burns, 2016"
  composer = "N. Fielding Burns, 2016"
  tune = "Glad Promise"
  meter = "8.8.10.8"
}

global =
{
  \time 3/4
  \key f \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Pre -- pare ye the way of the Lord!
    The proph -- et I -- sa -- iah fore -- told
    de -- liv -- er -- ance planned by Ho -- ly God since
    cre -- a -- tion’s first dawn _ to un -- fold.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    “Pre -- pare ye the way of the Lord,”
    said John to the Is -- rael -- ite crowd.
    “He comes to lift up the poor and op -- pressed,
    and strike down the might -- _ y and proud.”
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    “Pre -- pare ye the way of the Lord!
    Like vi -- pers you flee from the storm!
    Re -- pent of your sin, do jus -- tice a -- gain;
    make mer -- cy and kind_ ness your norm.”
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Pre -- pare ye the way of the Lord,
    our God born a -- mong us a man
    of A -- bra -- ham’s line, to dwell for a time
    and set free the na -- _ tions His plan.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    Pre -- pare ye the way of the Lord,
    who in your own foot -- steps has trod.
    Re -- mem -- ber His path of un -- de -- served death,
    this sac -- ri -- fice, Christ -- _ child of God.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "6. "

    “Pre -- pare ye the way of the Lord,”
    still groans all cre -- a -- tion in pain.
    To glimpse at the Son’s in -- her -- it -- ance of
    re -- demp -- tion, all na -- _ ture does strain.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "7. "

    Pre -- pare ye the way of the Lord;
    His vic -- to -- ry march we a -- wait.
    Make read -- y your heart; His dwell -- ing place marked,
    He knocks and now stands _ at the gate.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "8. "

    Pre -- pare ye the way of the Lord!
    His com -- ing once more is at hand!
    His judg -- ment is set, to raise up the dead,
    and reign high a -- bove _ eve -- ry land!
  }
>>

soprano = \relative c' {
  \partial 4

  c'4
  c4. bes8 a4
  bes g4. f8
  f2

  a4
  g4. f8 e4
  f e d
  c2

  \bar "" \break

  g'4
  e4. f8 g4
  a2 f4
  bes a g
  c2

  a4
  d, bes' a
  a8 g f4 e
  f2

  \bar "|."
}

alto = \relative c' {
  g'4
  a4. g8 f4
  f e4. f8
  c2

  d4
  e4. d8 c4
  c c b
  c2

  d4
  cis4. d8 e4
  f2 d4
  d f f
  e2

  f4
  d d c
  d c c
  c2
}

tenor = \relative c {
  c'4
  c4. c8 c4
  d c bes
  a2

  g4
  g4. g8 g4
  a4 g f
  e2

  g4
  g4. g8 a4
  a2 a4
  bes bes g
  a2

  a4
  bes g f
  f a g
  a2
}

bass = \relative c {
  e4
  f4. f8 f4
  bes, c c
  f2

  b,4
  c4. d8 e4
  f g g,
  c2

  bes4
  a4. b8 cis4
  d( e) f
  g g bes,
  a2

  d4
  g, g a
  bes c c
  f,2
}

\include "hymn-template.ily"
