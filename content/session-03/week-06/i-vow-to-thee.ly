\include "hymn.ily"

\paper
{
  page-count = 2
}

\header
{
  title = "I Vow to Thee, My Country"
  poet = "Cecil Spring-Rice, 1908"
  composer = "Gustav Holst, 1921"
  tune = "Thaxted"
  meter = "13.13.13 D"
}

global =
{
  \time 3/4
  \key bes \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    I _ vow to thee, my coun -- _ try, all earth -- ly things a -- bove,
    en -- _ tire and whole and per -- _ fect, the ser -- vice of my love;
    the _ love that asks no ques -- tion, the _ love that stands the test,
    that _ lays up -- on the al -- _ tar the dear -- est and the best;
    the _ love that nev -- er fal -- _ ters, the love that pays the price,
    the _ love that makes un -- daunt -- _ ed the fi -- nal sac -- ri -- fice.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    And _ there's an -- oth -- er coun -- _ try I've heard of long a -- go,
    most _ dear to them that love _ her, most great to them that know;
    we _ may not count her ar -- mies, we _ may not see her King;
    her _ for -- tress is a faith -- ful heart, her pride is suf -- fer -- ing;
    and _ soul by soul and si -- lent -- ly her shin -- ing bounds in -- crease,
    and her ways are ways of gen -- tle -- ness and all her paths are peace.
  }
>>

soprano = \relative c' {
  \partial 4

  d8 f
  g4. bes8 a8. f16
  bes8 c bes4 a
  g8 a g4 f
  d2

  \linebreak

  d8 f
  g4. bes8 a8. f16
  bes8 c d4 d
  d8 c bes4 c
  bes2

  \linebreak

  f8 d
  c4. c8 bes d
  c4 f f8 d
  c4. c8 d f
  g2

  \linebreak

  g8 a
  bes8. bes16 a4 g
  f8 f bes4 d,
  c8 bes c4 d
  f2

  \linebreak

  d8 f
  g4. bes8 a8. f16
  bes8 c bes4 a
  g8 a g4 f
  d2

  \linebreak

  d8 f
  g4. bes8 a8. f16
  bes8 c d4 d
  d8 c bes4 c
  bes2

  \bar "|."
}

alto = \relative c' {
  d4
  ees4. ees8 ees8. ees16
  f4 f f
  ees8 ees ees4 c
  bes2

  d4
  ees4. ees8 ees8. ees16
  f4 f f
  ees8 ees g4 ees
  d2

  bes4
  a4. a8 bes bes
  c4 c bes
  a4. a8 bes bes
  ees2

  ees4
  d8. d16 d4 ees
  f8 f ees4 bes
  g8 g g4 bes
  c( bes)

  a8 d
  ees4. ees8 ees8. ees16
  f8 f f4 f
  ees8 ees ees4 c
  bes2

  d8 d
  ees4. ees8 ees8. ees16
  f8 f f4 f
  ees8 ees g4 f
  d2
}

tenor = \relative c {
  bes'4
  bes4. bes8 c8. c16
  bes4 bes bes
  bes8 bes bes4 a
  g2

  a4
  bes4. bes8 c8. c16
  bes4 bes bes
  g8 g bes4 g
  bes2

  f4
  f4. f8 g g
  f4 f f
  f4. f8 f f
  bes2

  c4
  bes8. bes16 bes4 bes
  bes8 bes bes4 f
  ees8 d ees4 g
  f2

  bes4
  bes4. bes8 c8. c16
  bes8 bes bes4 bes
  bes8 bes bes4 a
  g2

  a8 a
  bes4. bes8 c8. c16
  bes8 bes bes4 bes
  g8 g bes4 a
  f2
}

bass = \relative c {
  bes4
  ees4. ees8 c8. c16
  d4 d d
  ees8 ees ees4 f
  g2

  f4
  ees4. ees8 c8. c16
  d8 ees f4 bes,8 d
  ees8 ees ees4 ees
  bes2

  d4
  f4. f8 g, g
  a4 a d
  f4. f8 bes, bes
  ees4( d)

  c4
  g'8. g16 f4 ees
  d8 d c4 bes
  ees8 d c4 bes
  a( g)

  f'4
  ees4. ees8 c8. c16
  d8 d d4 d
  ees8 ees ees4 f
  g2

  f8 f
  ees4. ees8 c8. c16
  d8 ees f4 bes,8 d
  ees8 ees ees4 f
  bes,2
}

\include "hymn-template.ily"
