\include "hymn.ily"

\header {
  title = "How Sweet the Name of Jesus Sounds"
  poet = \markup \poet "John Newton, 1774"
  composer = \markup \composer "Alexander Robert Reinagle, 1836"
}

global = {
  \key d \major
  \time 4/4
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    How sweet the name of Je -- sus sounds
    in a be -- liev -- er’s ear!
    It soothes his sor -- rows, heals his wounds,
    and drives a -- way his fear.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    It makes the wound -- ed spir -- it whole,
    and calms the trou -- bled breast;
    ’tis man -- na to the hun -- gry soul,
    and to the wear -- y, rest.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    O Je -- sus! Shep -- herd, Hus -- band, Friend,
    my Proph -- et, Priest and King,
    my Lord, my Life, my Way, my End,
    ac -- cept the praise I bring.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Weak is the ef -- fort of my heart,
    and cold my warm -- est thought;
    but when I see Thee as Thou art,
    I’ll praise Thee as I ought.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    Till then I would Thy love pro -- claim
    with ev -- ery fleet -- ing breath,
    and may the mu -- sic of Thy name
    re -- fresh my soul in death!
  }
>>

soprano = \relative c' {
  a'4
  d cis b a
  a g fis fis
  e d g fis
  e2.

  \linebreak

  fis4
  g fis b a
  a g fis d
  fis e d cis
  d2.
}

alto = \relative c' {
  d4
  fis fis d d
  e cis d d
  b8 cis d4 cis d
  cis2.

  d4
  d d d d
  b cis d b
  d b a a
  a2.
}

tenor = \relative c' {
  fis,4
  a a g a
  a a a a
  b a g a
  a2.

  a4
  g a b d,
  e e d fis
  a g fis e8 g
  fis2.
}

bass = \relative c {
  d4
  d fis g fis
  cis a d d
  g fis e d
  a2.

  d8 c
  b4 a g fis
  e a b b
  fis g a a
  d2.
}

\include "hymn-template.ily"