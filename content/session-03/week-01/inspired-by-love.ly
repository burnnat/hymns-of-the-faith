\include "hymn.ily"

\header
{
  title = "Inspired by Love and Anger"
  poet = "John L. Bell & Graham Maule, 1987"
  composer = "Keith & Kristyn Getty, 2005"
  % tune = "Beneath the Cross"
  % meter = "7.6.7.6 D"
}

global =
{
  \time 4/4
  \key d \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    In -- _ spired by love and an -- ger, dis -- _ turbed by need and pain,
    in -- _ formed of God’s own bi -- as we _ ask him once a -- gain:
    “How _ long must some folk suf -- fer? How _ long can few folk mind?
    How _ long dare vain self -- in -- terest turn _ prayer and pit -- y blind?”
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    From _ those for -- ev -- er vic -- tims of _ heart -- less hu -- man greed,
    their _ cru -- el plight com -- pos -- es a _ lit -- a -- ny of need:
    “Where _ are the fruits of jus -- tice? Where _ are the signs of peace?
    When _ is the day when pris -- oners and _ dreams find their re -- lease?”
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    To _ God, who through the proph -- ets pro -- _ claimed a dif -- ferent age,
    we _ of -- fer earth’s in -- dif -- ference, its _ ag -- o -- ny and rage:
    “When _ will the wronged be right -- ed? When _ will the king -- dom come?
    When _ will the world be gen -- erous to _ all in -- stead of some?”
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    God _ asks, “Who will go for me? Who _ will ex -- tend my reach?
    And _ who, when few will lis -- ten, will _ proph -- e -- sy and preach?
    And _ who, when few bid wel -- come, will _ of -- fer all they know?
    And _ who, when few dare fol -- low, will _ walk the road I show?”
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    A -- _ mused in some -- one’s kitch -- en, a -- _ sleep in some -- one’s boat,
    at -- _ tuned to what the an -- cients ex -- _ posed, pro -- claimed and wrote,
    a _ Sav -- iour with -- out safe -- ty, a _ trades -- man with -- out tools,
    has _ come to tip the bal -- ance with _ fish -- er -- men and fools.
  }
>>

soprano = \relative c' {
  \partial 4

  d8 e
  fis4. a8 g4 fis
  e( d8. b16) b4 d8 b
  a4. d8 d4. e8
  e2.

  \linebreak

  d8 e
  fis4. a8 g4 fis
  e( d8. b16) b4 d8 b
  a4. d8 d4 cis4
  d2.

  \linebreak

  fis8 a
  b4. a8 b4 a
  fis8 a4.~ a4 fis8 a
  b4. a8 b4 a
  e2.

  \linebreak

  d8 e
  fis4. a8 g4 fis
  e( d8. b16) b4 d8 b
  a4. d8 d4 cis4
  d2.

  \bar "|."
}

alto = \relative c' {
  d8 e
  d4. fis8 d4 d
  b2 b4 d8 b
  a4. a8 a4 a
  d2.

  d8 e
  d4. fis8 d4 d
  b2 b4 d8 b
  a4. a8 a4 a
  a2.

  d8 fis
  g4. g8 g4 g
  cis, e( d) d8 fis
  g4. g8 g4 d
  d2( cis4)

  d8 e
  d4. fis8 d4 d
  b2 b4 d8 b
  a4. a8 a4 a
  a2.
}

tenor = \relative c {
  a'4
  a4. a8 a4 a
  g2 g4 g
  fis4. fis8 fis4 fis
  g2.

  g4
  a4. a8 b4 a
  g2 g4 g
  fis4. fis8 g4 g
  fis2.

  a4
  d4. d8 cis4 cis
  a cis( b) a
  d4. d8 d4 b
  a2( g4)

  g4
  a4. a8 g4 a
  g2 g4 g
  fis4. fis8 g4 g
  fis2.
}

bass = \relative c {
  a'4
  d,4. d8 e4 fis
  g4. fis8 e4 e
  a,4. a8 b4 b
  e2( a,4)

  a4
  d4. d8 e4 fis
  g4. fis8 e4 e
  a,4. a8 a4 a
  d2.

  fis4
  g4. g8 g4 g
  fis fis( b,) b
  g'4. fis8 e4 e
  a,2.

  a4
  d4. d8 e4 fis
  g4. fis8 e4 e
  a,4. a8 a4 a
  d2.
}

\include "hymn-template.ily"
