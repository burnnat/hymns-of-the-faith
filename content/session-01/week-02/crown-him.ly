\include "hymn.ily"

\paper
{
  #(set-paper-size "letter")

  indent = 0.0
  markup-system-spacing #'basic-distance = #12

  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.35\in
  right-margin = 0.35\in

  ragged-bottom = false
  ragged-last-bottom = false
}

\header
{
  title = "Crown Him With Many Crowns"
  poet = \markup \poet "Matthew Bridges 1851; st. 4, Godfrey Thring, 1874"
  composer = \markup \composer "George Job Elvey, 1868"
}

global =
{
  \time 4/4
  \key d \major

  #(set-accidental-style 'modern-voice)
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Crown Him with man -- y crowns,
    the Lamb up -- on His throne.
    Hark, how the heaven -- ly an -- them _ drowns
    all mu -- sic but its own!
    A -- wake, my soul, and sing
    of Him who died for thee,
    and hail Him as thy match -- less king
    through all e -- ter -- ni -- ty.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Crown Him the vir --  gin’s son,
    the God in -- car -- nate born,
    whose arm those crim -- son tro -- phies _ won
    which now His brow a -- dorn;
    Fruit of the mys -- tic rose,
    as of that rose the stem;
    The root whence mer -- cy ev -- er flows,
    the Babe of Beth -- le -- hem.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Crown Him the Lord of love,
    be -- hold His hands and side,
    rich wounds, yet vis -- i -- ble a _ -- bove,
    in beau -- ty glo -- ri -- fied.
    No an -- gel in the sky
    can ful -- ly bear that sight,
    but down -- ward bends his burn -- ing eye
    at mys -- ter -- ies so bright.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Crown Him the Lord of life,
    who tri -- umphed o’er the grave,
    and rose vic -- to -- rious in the _ strife
    for those He came to save.
    His glo -- ries now we sing,
    who died and rose on high,
    who died e -- ter -- nal life to bring,
    and lives that death may die.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    Crown Him the Lord of peace,
    whose power a scep -- ter sways
    from pole to pole, that wars may _ cease,
    and all be prayer and praise.
    His reign shall know no end,
    and round His pierc -- ed feet
    fair flowers of par -- a -- dise ex -- tend
    their fra -- grance ev -- er sweet.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "6. "

    Crown Him the Lord of years,
    the po -- ten -- tate of time,
    cre -- a -- tor of the roll -- ing _ spheres,
    in -- ef -- fa -- bly sub -- lime.
    All hail, Re -- deem -- er, hail!
    For Thou hast died for me;
    Thy praise shall nev -- er, nev -- er fail
    through -- out e -- ter -- ni -- ty.
  }
>>

soprano = \relative c' {
  d4 d8 d fis4 fis
  b2. b4
  a d, g fis
  e2. e4
  fis a b a
  gis fis8 e a4 d
  cis d b b
  a2. a4
  a fis e d
  b'2. b4
  b gis fis e
  cis'2. cis4
  d4. cis8 b4 a
  g e fis a
  g fis e e
  d1

}

alto =
\relative c' {
  a4 a8 a d4 d
  d2. d4
  d d cis d
  cis2. cis4
  d e d d
  b b e d
  e fis e e
  cis2. cis4
  d d cis d
  d2. dis4
  e e d! e
  e2. e4
  d d d d
  d cis d d
  d d d cis
  d1
}

tenor =
\relative c {
  fis4 fis8 fis fis4 fis
  g2. g4
  a b g a
  a2. a4
  a a fis fis
  gis gis a gis
  a a a gis
  a2. a4
  a a g a
  b2. a4
  gis b a b
  a2. a4
  a a g a
  b a a a
  b a a4. g8
  fis1
}

bass =\relative c {
  d4 d8 d b4 b
  g2. g'4
  fis g e d
  a2. a4
  d cis b d
  e d cis b
  a d e e
  a,2. g'4
  fis d e fis
  g2. fis4
  e e fis gis
  a2. g4
  fis fis g fis
  e a d, fis,
  g d' a a
  d1
}

\include "hymn-template.ily"