\include "hymn.ily"

\header {
  title = "Dear Refuge of My Weary Soul"
  poet = \markup \poet "Anne Steele, 1760"
  composer = \markup \composer "Anonymous, 1749"
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Dear ref -- uge of my wear -- y soul,
    on Thee when sor -- rows rise;
    on Thee, when waves of trou -- ble roll,
    my faint -- ing hope re -- lies.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    To Thee I tell each ris -- ing grief,
    for Thou a -- lone canst heal;
    Thy word can bring a sweet re -- lief,
    for ev -- ery pain I feel.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    But oh! When gloom -- y doubts pre -- vail
    I fear to call Thee mine;
    the springs of com -- fort seem to fail
    and all my hopes de -- cline.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Hast Thou not bid me seek Thy face?
    And shall I seek in vain?
    And can the ear of sover -- eign grace
    be deaf when I com -- plain?
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    Thy mer -- cy -- seat is o -- pen still;
    here let my soul re -- treat,
    with hum -- ble hope at -- tend Thy will,
    and wait be -- neath Thy feet.
  }
>>

soprano = \relative c' {
  ees4
  ees2 bes4
  ees4( f) g
  aes( g) f
  g2

  bes4
  g( aes) bes
  ees,( f) d
  ees2

  \linebreak

  bes'4
  ees( bes) c
  bes( aes) g
  c8( bes aes4) g
  f2

  bes4
  ees8( d c4) bes
  aes( g) f
  ees2
}

alto = \relative c' {
  bes4
  bes2 bes4
  c( d) ees
  ees2 d4
  ees2

  f4
  ees2 ees4
  c2 bes4
  bes2

  ees4
  ees( g) ees
  ees( f) ees
  ees( f) bes,
  bes2

  d4
  ees2 ees4
  ees2 d4
  ees2
}

tenor = \relative c' {
  g4
  g2 f4
  g( bes) bes
  c( bes) bes
  bes2

  bes4
  bes( c) bes
  g( aes) f
  g2

  g8 aes
  bes2 aes4
  bes2 bes4
  aes8( bes c d) ees4
  d2

  bes8 aes
  g4( aes) bes
  c( bes) aes
  g2
}

bass = \relative c {
  ees4
  ees2 d4
  c( bes) ees
  aes,( bes) bes
  ees2

  d4
  ees( c) g
  c( aes) bes
  ees2

  ees8 f
  g4( ees) aes
  g( d) ees
  aes8( g f4) ees
  bes2

  bes4
  c( aes) g
  aes( bes) bes
  ees2
}

\include "hymn-template.ily"