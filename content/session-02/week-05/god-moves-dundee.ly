\include "hymn.ily"

\header
{
  title = "God Moves in a Mysterious Way"
  poet = \markup \poet "William Cowper, 1774"
  composer = \markup \composer "Thomas Ravenscroft, 1615"
}

global =
{
  \time 2/2
  \key ees \major
  \partial 2
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

    Ye fear -- ful saints, fresh cour -- age take;
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
    God is his own in -- ter -- pre -- ter,
    and he will make it plain.
  }
>>

soprano = \relative c' {

  ees2
  g4 aes bes ees,
  \time 3/2
  f g aes2 g
  \time 2/2
  f4 ees ees d
  ees2

  \linebreak

  bes'2
  ees4 d c bes
  \time 3/2
  bes a bes2 g
  \time 2/2
  f4 ees ees d
  ees2
}

alto = \relative c' {
  bes2
  ees4 ees ees bes
  des des ees2 ees
  d4 c c bes
  bes2

  ees2
  g4 f ees f
  g f d2 ees
  c4 g8[ aes] bes4 bes
  bes2
}

tenor = \relative c' {
  g2
  bes4 c bes g
  aes bes c2 bes
  bes4 g f f
  g2

  g2
  bes4 bes g f
  c' c bes2 bes
  aes4 ees f f
  g2
}

bass = \relative c {
  ees2
  ees4 aes, g ees'
  des bes aes2 ees'
  bes4 c aes bes
  ees2

  ees2
  ees4 bes c d
  ees f bes,2 ees
  aes,4 c bes bes
  ees2
}

\layout {
  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
}

\include "hymn-template.ily"