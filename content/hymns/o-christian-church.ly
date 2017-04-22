\include "hymn.ily"

\header
{
  title = "O Christian Church"
  poet = "Hymns of the Faith Class, 2016"
  composer = "N. Fielding Burns, 2016"
  tune = "Saline"
  meter = "8.6.8.6D"
}

global =
{
  \time 4/4
  \key aes \major
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    O Chris -- tian church a -- cross the globe,
    who in God's word _ u -- nite,
    al -- though from lands so far a -- way
    still glimpse His guid -- ing light,
    whom Christ has tak -- en as His bride,
    all na -- tions to _ give praise;
    in all the ways you serve the Lord,
    join all your hands to raise.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    O Chris -- tian neigh -- bors, sib -- lings, friends,
    salt of the earth _ u -- nite,
    and strive as one to show God's works
    with all His pow'r and might.
    With one strong voice, to -- geth -- er claim
    the prom -- ise of _ the King:
    that He will sure -- ly see you through,
    to grow, re -- joice, and sing.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    O Chris -- tian seek -- er, child of God,
    for -- give your fel -- _ low man;
    as Christ for -- gave, so must we all
    to act up -- on His plan.
    Be fo -- cus'd on what you can give,
    and not what you _ re -- ceive,
    to spread Christ's mes -- sage far and wide,
    till all the world be -- lieve.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    O Ho -- ly Spir -- it, flame di -- vine,
    come set our hearts _ a -- blaze
    with burn -- ing pas -- sion for Your Word
    to guide us in Your ways,
    to seek Your pow'r and not re -- ly
    on hu -- man strength _ a -- lone,
    but o -- pen us to fruits and gifts:
    make us Your ver -- y own!
  }
>>

soprano = \relative c' {
  ees4
  c ees aes bes
  c aes f ees
  f4. ees8 f g aes4
  aes2( g4)

  \linebreak

  ees4
  c4. ees8 aes4 bes
  c des ees aes,
  c bes aes g
  aes2.

  \linebreak

  c4
  ees4. c8 c4 aes
  bes bes c aes
  f4. ees8 f g aes4
  aes2( g4)

  \linebreak

  ees4
  c4. ees8 aes4 bes
  c des ees c
  bes aes aes g
  aes2.
}

alto = \relative c' {
  bes4
  aes bes c ees
  ees ees des ees
  des4. ees8 des4 des
  ees2.

  bes4
  aes4. bes8 c4 ees
  ees f g f
  aes f ees ees
  ees2.

  aes4
  g4. ees8 aes4 f
  aes g aes ees
  des4. ees8 des4 des
  ees2.

  ees4
  c4. ees8 f4 g
  aes aes g aes8 g
  f4 ees ees ees
  ees2.
}

tenor = \relative c {
  ees4
  ees ees f g
  aes aes aes aes
  aes4. aes8 aes4 bes
  bes2.

  ees,4
  ees4. ees8 f4 g
  aes aes c c8 des
  ees4 des c bes8 des
  des2( c4)

  ees4
  c4. c8 c4 c
  f ees ees aes,
  aes4. aes8 aes4 bes
  bes2.

  bes4
  aes4. bes8 c4 ees
  ees des c c
  des c bes8 c des4
  des( c2)
}

bass = \relative c {
  g4
  aes g f ees'
  aes, c des c
  des4. c8 des4 bes
  ees2.

  g,4
  aes4. g8 f4 ees'
  aes8 g f4 c f
  c des ees ees
  aes,2.

  aes'4
  c,4. c8 f4 aes
  des, ees aes c,
  des4. c8 des4 bes
  ees2.

  g4
  aes4. g8 f4 ees
  aes8 g f4 c f
  bes, c8 des ees4 ees
  aes,2.
}

\include "hymn-template.ily"
