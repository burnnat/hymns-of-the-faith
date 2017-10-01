\include "hymn.ily"

\header {
  title = "Thine Arm, O Lord"
  poet = "Edward H. Plumptre, 1864"
  composer = "William Croft, 1708"
  tune = "St. Matthew"
  meter = "8.6.8.6 D"
}

global = {
  \time 3/4
  \key bes \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Thine arm, O Lord, in days of old
    was strong to heal and save;
    it tri -- umphed o’er dis -- ease and death,
    o’er dark -- ness and the grave.
    To Thee they went, the blind, the deaf,
    the pal -- sied, _ and the lame,
    the lep -- er with his taint -- ed life,
    the sick with fe -- vered frame.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    And lo! Thy touch brought life and health,
    gave speech, and strength, and sight;
    and youth re -- newed and fren -- zy calmed
    owned Thee, the Lord of light:
    and now, O Lord, be near to bless,
    al -- might -- y _ as of yore,
    in crowd -- ed street, by rest -- less couch,
    as by Gen -- nes -- areth's shore.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Though love and might no long -- er heal
    by touch, or word, or look;
    though they who do Thy work must read
    thy laws in na -- ture’s book:
    yet come to heal the sick man’s soul;
    come, cleanse the _ lep -- rous taint;
    give joy and peace, where all is strife,
    and strength, where all is faint.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Be Thou our great de -- liv -- erer still,
    Thou Lord of life and death;
    re -- store and quick -- en, soothe and bless,
    with Thine al -- might -- y breath.
    To hands that work and eyes that see,
    give wis -- dom’s _ heaven -- ly lore,
    that whole and sick, and weak and strong,
    may praise Thee ev -- er -- more.
}
>>

soprano = \relative c' {
  \partial 4

  f4
  d2 f4
  bes2 d4
  c( bes) a
  bes2

  d4
  c2 f,4
  g( f) e
  f2

  \linebreak

  c'4
  a2 f4
  bes2 d4
  d( c) bes
  bes( a)

  f4
  bes2 d4
  c( bes) a
  bes2

  \linebreak

  d,4
  d2 g4
  g( fis) g
  a( g) fis
  g2

  a4
  bes2 a8 g
  f2 e4
  d2

  \linebreak

  f4
  f2 bes4
  g2 g4
  c2 bes4
  bes( a)

  f4
  bes2 d4
  c( bes) a
  bes2

  \bar "|."
}

alto = \relative c' {
  c4
  d2 d4
  d2 f4
  ees( d) c
  d2

  f4
  f2 f4
  d( c) c
  c2

  f4
  f2 f4
  f2 f4
  g2 d8 ees
  f2

  c4
  f2 f4
  ees( d) c
  d2

  c4
  bes2 d4
  d2 bes4
  ees4( d) d
  d2

  fis4
  g2 d4
  d2 cis4
  d2

  ees4
  d( ees) f
  ees2 f4
  e( f) g
  f2

  f4
  f( ees) f
  g( f) f
  f2
}

tenor = \relative c {
  f4
  bes2 a4
  bes2 bes4
  g( f) f
  f2

  bes4
  c2 a4
  bes( a) g
  a2

  a4
  c2 c4
  bes2 bes4
  bes( c) d8 bes
  c2

  a4
  bes2 bes4
  g( f) f
  f2

  fis4
  g2 g4
  bes( a) g
  c( bes) a
  bes2

  d4
  d( cis) d8 bes
  a2 g4
  f2

  a4
  bes2 bes4
  bes2 b4
  c2 c4
  c2 a4
  bes2 d4
  ees( d) c
  d2
}

bass = \relative c {
  a4
  bes2 d4
  g2 d4
  ees f f,
  bes2

  bes4
  a2 d4
  bes( c) c
  f2

  f4
  f2 ees4
  d2 bes4
  ees2 g4
  f2

  ees4
  d2 bes4
  ees( f) f
  bes,2

  a4
  g2 bes4
  d2 ees4
  c( d) d
  g2

  d4
  g( e) f8 g
  a2 a,4
  d2

  c4
  bes( c) d
  ees2 d4
  c( d) e
  f2

  ees4
  d( c) bes
  ees( f) f,
  bes2
}

\include "hymn-template.ily"
