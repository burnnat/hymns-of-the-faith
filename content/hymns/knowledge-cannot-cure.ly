\include "hymn.ily"

\header
{
  title = "Knowledge Cannot Cure My Doubt"
  poet = "N. Fielding Burns, 2017"
  composer = "N. Fielding Burns, 2017"
  tune = "Kenne den Herrn" % German, "Know the Lord"
  meter = "7.6.8.6"
}

global =
{
  \time 4/4
  \key d \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Knowl -- edge can -- not cure my doubt,
    nor facts, nor rea -- son sway,
    un -- less my pride be cast -- ed out
    and self -- trust flung a -- way.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    I be -- lieve, but still I cry,
    “Lord, help my un -- be -- lief!” % Mark 9:24
    And though I strain, no mor -- tal try
    can tru -- ly grant re -- lief. % "truly", as it comes from "truth"
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    As You prom -- ise, Lord, I seek
    and know that I shall find % Matthew 7:7-8, Luke 11:9-10
    not what I want, but what I need:
    calm strength and peace of mind.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    Fool -- ish hope my faith is not,
    nor wish -- ful thought of man,
    but sim -- ple trust in Him who sought
    my love ere I be -- gan. % 1 John 4:19
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "

    Though He slay me, still in Him % Job 13:15
    I hope for life at last,
    that e -- ven with the out -- look grim,
    to Him I still hold fast.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "6. "

    Through it all, my har -- bor be,
    Lord, and my for -- tress tall;
    pro -- tec -- tor -- friend, a -- bide with me
    and guide me through it all!
  }
>>

soprano = \relative c' {
  fis2. d4
  g2 fis
  b b
  a2.

  d4
  a2 b
  g4( fis) e2
  d2.

  \linebreak

  e4
  fis2. d4
  g2 fis
  b b
  a

  d2
  b4( a) g( fis)
  e2 e
  d1

  \bar "|."
}

alto = \relative c' {
  d2. d4
  d2 d
  d4( cis) d( e)
  fis4.( e8 d4)

  g4
  fis4( e) dis2
  e2 d4( cis)
  d2.

  cis4
  d4.( cis8 d4) d
  d2 d4( cis)
  d( b8 cis) d4( e)
  fis2

  a2
  d,2 e
  d cis
  a1
}

tenor = \relative c {
  a'2. fis4
  g2 a
  g g
  a4.( g8 a4)

  b4
  cis2 b
  b a
  fis4.( b8 a4)

  g4
  a2. a4
  g2 a
  g g
  a

  d4( c)
  b2 b
  a a4( g)
  fis1
}

bass = \relative c {
  d2. d4
  b2 a
  g4( a) b( cis)
  d4.( e8 fis4)

  e4
  fis2 b,
  e2 a
  d,4.( g8 fis4)

  e4
  d2. c4
  b2 a
  g4.( a8) b4( cis)
  d( e)

  fis2
  g2 e4( fis8 g)
  a2 a,
  d1
}

\include "hymn-template.ily"
