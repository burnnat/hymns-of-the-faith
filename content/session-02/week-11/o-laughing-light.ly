\include "hymn.ily"

\header
{
  title = "O Laughing Light"
  poet = \markup \poet "Silvia Dunstan, 1987"
  composer = \markup \composer "John Van Maanen, 1998"
}

global =
{
  \time 4/4
  \key bes \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    O laugh -- ing light, O first -- born of _ cre -- a -- tion,
    ra -- diance of glo -- ry, light of light be -- got -- ten,
    God self -- re -- veal -- ing, ho -- ly, bright _ and bles -- sed:
    You shine up -- on us.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Day's light is fleet -- ing, yours is light _ e -- ter -- nal;
    we look to you, our light with -- in the sha -- dow.
    We sing to you, Cre -- a -- tor, Christ _ and Spir -- it.
    You shine be -- fore us.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    Light of the world, O Je -- sus Christ, _ we bless you.
    Gi -- ver of life and Child of God, we praise you.
    Hear as the u -- ni -- verse pro -- claims _ your glo -- ry!
    You shine a -- mong us.
  }
>>

soprano = \relative c' {
  bes2 d4 bes
  f'2 f
  g4 f g8 a bes4
  bes( a) bes2

  d2 d4 c
  bes2 c2
  a4 bes c f,
  f( e) f2

  f2 f4 f
  g2 f2
  ees4 f g8 a bes4
  bes( a) bes( c)

  d2 c4 bes
  bes( a) bes2
}

alto = \relative c' {
  bes2 bes4 bes
  c d ees d
  ees d ees d8 ees
  f2 f

  f2 f4 f
  bes4( a) g2
  f4 f f d
  c2 c

  d2 ees4 d
  bes( c) ees( d)
  bes8 c d4 ees d8 ees
  f2 f

  f2 f8 ees d ees
  f2 f
}

tenor = \relative c' {
  d,2 f4 d
  f2 f
  bes4 bes g bes
  c2 d

  bes2 bes4 a
  d2 c2
  c4 d c bes8 a
  g2 a

  bes2 a4 bes
  g( a) bes2
  g8 a bes4 g bes
  c2 bes4( a)

  bes2 a4 bes
  c2 d
}

bass = \relative c {
  bes2 bes4 bes
  a bes c bes
  ees d c g'
  f2 bes,

  bes'2 bes4 f
  g( f2) e4
  f d a bes
  c2 f

  bes,2 c4 d4
  ees2 bes
  ees4 d c g'
  f4. ees8 d4 c

  bes4( d) f g
  f2 bes,
}

\include "hymn-template.ily"