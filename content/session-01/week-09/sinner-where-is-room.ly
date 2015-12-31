\include "hymn.ily"

#(set-global-staff-size 17.75)

\paper
{
  #(set-paper-size "letter")

  indent = 0.0
  markup-system-spacing #'basic-distance = #12

  top-margin = 0.5\in
  bottom-margin = 0.15\in
  left-margin = 0.8\in
  right-margin = 0.8\in
}

\header
{
  title = "Sinner, Where is Room for Doubt?"
  poet = \markup \poet "David L. Ward, 2012"
  composer = \markup \composer "Joanie Madden & Brian Keane, 1999"
  arranger = \markup \harmonizer "N. Fielding Burns, 2014"
}

global =
{
  \key c \major
  \time 3/4
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Sin -- ner, where is room for doubt?
    Has not Je -- sus’ love been proved?
    Did He not lay down His life
    and the Fa -- ther’s wrath re -- move?
    Hear Him on the cross ex -- claim -- ing,
    “It is fin -- ished,” then He died;
    Lose your doubts and fears for -- ev -- er
    at His bleed -- ing, lov -- ing side.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Sin -- ner, where is room for guilt?
    Has not Je -- sus borne your shame?
    Was He not cut off that you
    might the Fa -- ther’s hon -- or gain?
    See Him on the cross de -- grad -- ed,
    rid -- i -- culed and thrown a -- way,
    to re -- ceive the once re -- ject -- ed
    and His pard’n -- ing grace dis -- play.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Sin -- ner, where is room for toil?
    Has not Je -- sus won your rest?
    Did He not o -- bey the law,
    giv -- ing us His right -- eous -- ness?
    See Him on the cross ful -- fill -- ing
    both your pun -- ish -- ment and crown;
    Lose your pow -- er -- less re -- li -- gion,
    find your -- self in His re -- nown.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Sin -- ner, where is room for pride?
    Has not Je -- sus paid it all?
    Did He not show char -- i -- ty
    to one ru -- ined from the fall?
    On the cross He paid your ran -- som,
    ev -- ’ry debt has been e -- rased;
    You had noth -- ing, yet He gave you
    rich -- es by His lav -- ish grace.
  }
>>

soprano = \relative c' {
  c8 d
  e2 a4
  g2 e8 ( d )
  c2.

  c'2 b4
  a4 ( b ) c
  g8 ( e4. ) c4
  d2. ~ d2

  \linebreak

  c8 d
  e2 a4
  g2 e8 ( d )
  c2.

  a'4 ( b ) c
  g8 ( e4. ) c4
  d2 ~ d8 c
  c2. ~ c2

  \linebreak

  c'8 b
  c2 c8 ( b )
  c4. ( d8 ) e [( g, )]
  a2 (~ a8 g )
  g2

  \times 2/3 { g8 ( a ) b }
  c2 e,4
  e2 d8 ( c )
  d2. ~ d2

  \linebreak

  c'8 b
  c2 c8 ( b )
  c4. ( d8 ) e [( g, )]
  a2 (~ a8 b )
  c2 c8 a
  g8 ( e4. ) c4
  d2 ~ d8 c
  c2. ~ c2
}


alto = \relative c' {
  c8 b
  c2 c8 ( d )
  d2 b4
  b2 ( a4 )

  e'2 e4
  f2 f4
  g8 ( e4. ) c4
  c2. ( b2 )

  c8 b
  c2 c4
  d2 b4
  a2.

  a'4 ( g ) f
  g8 ( e4. ) c4
  c4 ( b4 ~ b8 ) c
  c2. ~ c2

  c'8 b
  a2 a4
  a2 g8 ( e )
  f2.
  e2

  \times 2/3 { d4 d8 }
  e2 c4
  b2 b8 ( c )
  d2. ~ d2

  c'8 b
  a2 a4
  a2 g8 ( e )
  f2.
  e2 f8 c
  e8 ( c4. ) c4
  c4 ( b4 ~ b8 ) c
  g2. ~ g2
}

tenor = \relative c' {
  g8 g
  g2 g4
  g2 g4
  e2.

  g2 c4
  c2 c4
  e8 ( c4. ) g4
  g2. ~ g2

  g8 g
  g2 c4
  b2 b4
  a2.

  c2 c4
  e8 ( c4. ) g4
  g2  g4
  g2. ~ g2

  e'8 e
  e2 e4
  e2 c4
  c2.
  c2

  \times 2/3 { b4 b8 }
  a2 a4
  g2 g4
  f4 ( g a c b )

  e8 e
  e2 e4
  e2 c4
  c2 (~ c8 b )
  a2 a8 a
  g2 g4
  g2 f4
  e2. ~ e2
}

bass = \relative c {
  g'8 g
  c,2 c4
  b2 b4
  a2.

  g2 g'4
  f4 ( g ) a
  g2 e4
  d2. ~ d2

  g8 g
  c,2 e4
  g2 g4
  a2.

  f4 ( g ) a
  g2 g4
  g2 f4
  e2. ~ e2

  c'8 b
  a2 a4
  g2 g4
  f2.
  e2

  \times 2/3 { g4 g8 }
  a2 c,4
  e2 b4
  d4 ( e f g2 )

  g8 g
  a2 a4
  g2 g4
  f2 ( d4 )
  a2

  d8 f
  g2 g4
  g2 g,4
  c2. ~ c2
}

\include "hymn-template.ily"