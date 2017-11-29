\include "hymn.ily"

\header {
  title = "I Cannot Tell"
  poet = "William Fullerton, 1920"
  composer = "Traditional Irish"
  tune = "Londonderry Air"
  meter = "11.10.11.10 D"
}

global = {
  \time 4/2
  \key des \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    I cannot tell why he, whom angels worship,
    should set his love upon the sons of men,
    or why, as Shepherd, he should seek the wanderers,
    to bring them back, they know not how or when.
    But this I know, that he was born of Mary
    when Bethl'em's manger was his only home,
    and that he lived at Nazareth and laboured,
    and so the Saviour, Saviour of the world, is come.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    I cannot tell how silently he suffered,
    as with his peace he graced this place of tears,
    or how his heart upon the cross was broken,
    the crown of pain to three and thirty years.
    But this I know, he heals the broken-hearted
    and stays our sin and calms our lurking fear
    and lifts the burden from the heavy laden;
    for still the Saviour, Saviour of the world is here.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    I cannot tell how he will win the nations,
    how he will claim his earthly heritage,
    how satisfy the needs and aspirations
    of east and west, of sinner and of sage.
    But this I know, all flesh shall see his glory,
    and he shall reap the harvest he has sown,
    and some glad day his sun will shine in splendour
    when he the Saviour, Saviour of the world, is known.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    I cannot tell how all the lands shall worship,
    when at his bidding every storm is stilled,
    or who can say how great the jubilation
    when every heart with love and joy is filled.
    But this I know, the skies will thrill with rapture,
    and myriad myriad human voices sing,
    and earth to heav'n, and heav'n to earth, will answer,
    "At last the Saviour, Saviour of the world, is King!"
}
>>

soprano = \relative c' {
  \partial 2.

  c4 des ees
  f2. ees4 f bes aes f
  ees( des) bes2.

  des4 f ges
  aes2. bes4 aes f des f
  ees1~ ees4

  \linebreak

  c4 des ees
  f2. ees4 f bes aes f
  ees( des) bes2.

  c4 des ees
  f2. ges4 f ees des ees
  des1~ des4

  \linebreak

  aes'4 bes c
  des2. c4 c bes aes f
  aes( f) des2.

  aes'4 bes c
  des2. c4 c bes aes f
  ees1~ ees4

  \linebreak

  aes4 aes aes
  f'2. ees4 ees des bes des
  aes( f) des2.

  c4 des ees
  f bes aes f ees des bes c
  des1~ des4

  \bar "|."
}

alto = \relative c' {
  c4 des c
  des2. ees4 des des des des
  bes2 bes2.

  aes4 des c
  des2. des4 des des des des
  c1~ c4

  aes4 des c
  des2. ees4 des des des des
  bes2 bes2.

  aes4 des c
  des2. des4 des c des c
  des1~ des4

  des4 des ges
  f2. f4 ges ges ees des
  des2 des2.

  des4 des ges
  f2. f4 ges ges des des
  des2( c4 bes c)

  ees4 aes aes
  aes2. ges4 ges f ges des
  des2 des2.

  c4 des c
  des des des des bes bes bes aes
  aes1~ aes4
}

tenor = \relative c {
  aes'4 aes aes
  aes2. aes4 aes ges aes aes
  ges2 ges2.

  aes4 aes aes
  aes2. ges4 aes aes bes bes
  ees,1~ ees4

  aes4 aes aes
  aes2. aes4 aes ges aes aes
  ges2 des2.

  aes'4 aes aes
  aes2. bes4 aes ges f aes
  f1~ f4

  aes4 des aes
  aes2. aes4 des des c bes
  aes2 f2.

  aes4 des aes
  aes2. aes4 des des aes aes
  aes1~ aes4

  c4 des ees
  f2. c4 c des des bes
  aes2 bes2.

  aes4 aes aes
  aes bes des aes ges ges ees ges
  f1~ f4
}

bass = \relative c {
  ges'4 f ees
  des2. c4 des ges f des
  ges2 ges2.

  f4 des ees
  f2. ges4 f des bes g
  aes1~ aes4

  ges'4 f ees
  des2. c4 des ges f des
  ges2 ges,2.

  ges'4 f ees
  des2. ges,4 aes aes bes aes
  des1~ des4

  f4 ges ees
  des2. aes'4 ges ges aes bes
  f( des) bes2.

  f'4 ges ees
  des2. aes'4 ges ges f des
  aes1~ aes4

  aes'4 bes c
  des2. aes4 a bes ges ges
  f( des) bes2.

  ges'4 f ees
  des ges f des ges, ges aes aes
  des1~ des4
}

\include "hymn-template.ily"
