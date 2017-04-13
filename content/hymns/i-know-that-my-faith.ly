\include "hymn.ily"

\header
{
  title = "Biblical Portraits: Barnabas"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Encouragement"
  meter = "11.8.11.8"
}

global =
{
  \time 3/4
  \key ees \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    I know that my faith is not my faith a -- lone;
    as sib -- lings in Christ we shall live,
    to rest in com -- mu -- ni -- ty’s spir -- i -- tual home
    and bol -- ster what oth -- ers can give.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    What prof -- its I have I will glad -- ly pro -- vide
    for min -- i -- stry’s work to be done,
    as true wealth is found in re -- new -- al of lives
    to wit -- ness for dec -- ades to come.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    To those who have fal -- tered, or fal -- len, or failed,
    for -- give -- ness for all I ex -- tend,
    to fol -- low the way of my Sa -- vior and Lord,
    en -- cour -- ag -- er, lead -- er, and friend.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    And ev -- en when called on to walk diff -- erent roads,
    we all share an ul -- ti -- mate goal
    to spread forth the gos -- pel, with each one be -- stowed
    their own com -- ple -- men -- ta -- ry role.
  }
>>

soprano = \relative c' {
  \partial 4

  bes4
  ees4. f8 g4
  ees4. f8 g4
  aes4 g4. f8
  g2

  ees4
  c4. d8 ees4
  aes g ees
  f2.~ f2

  bes,4
  bes'4. aes8 g4
  aes4. g8 f4
  c4. d8 ees4
  f2

  bes,4
  aes'4. g8 f4
  aes g f
  ees2.~ ees2


  \bar "|."
}

alto = \relative c' {
  bes4
  bes4. bes8 bes4
  bes4. bes8 ees4
  c4 bes4. c8
  bes2

  bes4
  c4. bes8 c4
  ees4 ees ees
  ees2.( d2)

  bes4
  ees4. ees8 ees4
  d4. d8 aes4
  g4. aes8 c4
  ees4( d)

  bes4
  c4. bes8 c4
  ees4 ees d
  bes2( c4 bes2)
}

tenor = \relative c {
  bes'4
  g4. aes8 bes4
  g4. aes8 bes4
  f4 f4. f8
  f4( ees)

  g4
  aes4. g8 aes4
  bes4 d c
  c2.( bes2)

  bes4
  g4. f8 ees4
  f4. f8 d4
  ees4. f8 g aes
  f2

  f4
  f4. f8 f4
  c' bes aes
  g2( aes4 g2)
}

bass = \relative c {
  bes4
  ees4. ees8 d4
  c4. c8 bes4
  aes4 aes4. aes8
  g2

  c4
  f4. f8 f4
  g4 g g
  aes2.( bes2)

  bes,4
  bes4. bes8 bes4
  b4. b8 b4
  c4. c8 c4
  bes2

  aes8 g
  f4. g8 aes4
  bes4 bes bes
  ees2.~ ees2
}

\include "hymn-template.ily"