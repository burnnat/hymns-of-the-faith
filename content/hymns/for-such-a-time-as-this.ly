\include "hymn.ily"

\header
{
  title = "Biblical Portraits: Esther"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Present Time"
  meter = "6.6.8.6.6"
}

global =
{
  \time 4/4
  \key f \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    For such a time _ as this,
    your life is pur -- _ pose -- made.
    Make firm re -- solve and strength _ your _ vow;
    the time to act is _ now:
    Press on, be not _ a -- fraid!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    For such a time _ as this,
    God raised you in _ His law.
    From low es -- tate He took _ you _ in
    to cleanse you of your _ sin
    and trans -- form ev -- _ ery flaw.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    In such a time _ as this,
    God’s plan has been _ fore -- told.
    And though you wa -- ver, if _ you _ run,
    yet will His will be _ done:
    Have cour -- age and _ be bold!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Your in -- flu -- ence _ in life
    and power are but _ a gift
    that God has placed with -- in _ your _ hands,
    pre -- pared as in His _ plans
    for such a time _ as this.
  }
>>

soprano = \relative c' {
  \partial 4

  d'4
  c a bes8 a g4
  f2.

  a4
  g e f8 e d4
  c2.

  c4
  a' f g c,
  f8 g a bes c4

  d4
  c a bes a8 g
  bes4( a2)

  d4
  c a bes8 a g4
  f2.

  \bar "|."
}

alto = \relative c' {
  f4
  a f f e
  f2.

  e4
  d e d c8 b
  c2.

  c4
  c c e c
  f d e

  f4
  f f d c
  d( c2)

  d8 e
  f4 f f e
  f2.
}

tenor = \relative c {
  d'4
  c c d c8 bes
  a2.

  cis4
  d bes a g
  e2.

  c4
  f a g g
  f f g

  bes4
  a c bes a8 g
  f2.

  f4
  f c' d c8 bes
  a2.
}

bass = \relative c {
  d8 e
  f4 a, bes c
  f2.

  a4
  bes g f d
  c2.

  c4
  c c c bes
  a d c

  d8 e
  f4 a g f8 e
  d4( c2)

  bes4
  a a g c
  f2.

}

\include "hymn-template.ily"