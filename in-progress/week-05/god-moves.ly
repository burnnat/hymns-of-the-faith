\include "hymn.ily"

\header
{
  title = "God Moves in a Mysterious Way"
  poet = \markup \poet "William Cowper, 1774"
  composer = \markup \composer "Anonymous, 1635"
}

global =
{
  \key d \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    God moves in a mys -- te -- rious way
    his won -- ders to per -- form;
    he plants his foot -- steps in the sea
    and rides up -- on the storm.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Deep in un -- fath -- om -- a -- ble mines
    of nev -- er -- fail -- ing skill,
    he trea -- sures up his bright de -- signs
    and works his sov -- ereign will.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Ye fear -- ful saints, fresh courage take;
    the clouds ye so much dread
    are big with mer -- cy and shall break
    in bless -- ings on your head.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Judge not the Lord by fee -- ble sense,
    but trust him for his grace;
    be -- hind a frown -- ing prov -- i -- dence
    he hides a smil -- ing face.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    His pur -- pos -- es will rip -- en fast,
    un -- fold -- ing ev -- ery hour;
    the bud may have a bit -- ter taste,
    but sweet will be the flower.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "6. "

    Blind un -- be -- lief is sure to err
    and scan his work in vain;
    God is his own in -- ter -- preter,
    and he will make it plain.
  }
>>

soprano = \relative c' {
  d2 \bar "|"
  a'4 fis d' a \bar "|"
  b d cis2 a \bar "|"
  d4 fis, a e \bar "|"
  d2

  \linebreak

  a'2 \bar "|"
  d4 b cis a \bar "|"
  b b a2 fis \bar "|"
  a4 d fis, e \bar "|"
  d2
}

alto = \relative c' {
  d2
  e4 d d d
  d fis e2 cis
  d4 d d cis
  d2

  d2
  d4 e e cis
  fis e cis2 d
  e4 d d cis
  d2
}

tenor = \relative c {
  fis2
  a4 a b fis
  g a a2 a
  fis4 b a4. g8
  fis2

  fis2
  fis4 gis gis a
  a gis a2 a
  a4 fis8[ g] a4. g8
  fis2
}

bass = \relative c {
  d2
  cis4 d b d
  g d a'2 a,
  b4 b fis8[ g] a4
  d2

  d2
  b4 e cis fis
  d e a,2 d
  cis4 b a a
  d2
}

\layout {
  \context {
    \Staff
    \remove "Time_signature_engraver"
  }

  \context {
    \Score
    timing = ##f
  }
}

\include "hymn-template.ily"