\include "hymn.ily"

\header {
  title = "Glory Be To God On High"
  poet = "Charles Wesley, 1744"
  composer = "Johann Georg Hille, 1742"
  tune = "Amsterdam"
  meter = "7.6.7.6.7.7.7.6"
}

global = {
  \time 4/4
  \key g \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "

    Glo -- ry be to God on high, _
    and peace on earth de -- scend;
    God comes down, He bows the sky _
    and shows Him -- self our friend!
    God "th’ in" -- vis -- i -- ble _ ap -- pears;
    God, the _ blest, the great _ I _ AM,
    so -- journs in this vale of tears, _
    and Je -- sus _ is His name.
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Him the an -- gels all a -- dored, _
    their mak -- er and their King;
    Tid -- ings of their hum -- bled Lord _
    they now to mor -- tals bring.
    Emp -- tied of His maj -- _ es -- ty,
    of His _ daz -- zling glo -- _ ries _ shorn,
    be -- ing’s source be -- gins to be, _
    and God Him -- _ self is born!
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    See "th’ e" -- ter -- nal Son of God _
    a mor -- tal Son of Man,
    dwell -- ing in an earth -- ly clod, _
    whom heav’n can -- not con -- tain!
    Stand a -- mazed, ye heav’ns, _ at this!
    See the _ Lord of earth _ and _ skies;
    hum -- bled to the dust He is, _
    and in a _ man -- ger lies!
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    We, the sons of men, re -- joice, _
    the Prince of Peace pro -- claim;
    with the an -- gels, lift our voice _
    and shout Im -- man -- uel’s name.
    Knees and hearts to Him _ we bow,
    of our _ flesh and of _ our _ bone;
    Je -- sus is our broth -- er now, _
    and God is _ all our own!
}
>>

soprano = \relative c' {
  g'4 d g a
  b a b8 c d4
  e d c b
  a1

  \break

  g4 d g a
  b a b8 c d4
  e d c b
  a1

  \break

  d4 e d e
  d8 c b4 a2
  b4 a8 b c4 b
  a8 g a b a2

  \break

  g4 d g a
  b a b8 c d4
  e d8 c b4 a
  g1

  \bar "|."
}

alto = \relative c' {
  d4 d d fis
  g fis g g
  g g a g
  fis1

  d4 d d fis
  g fis g g
  g g a g
  fis1

  g4 g g g
  a g fis2
  g4 g a g
  e e fis2

  d4 d d fis
  g fis g g
  g g g fis
  g1
}

tenor = \relative c {
  b'4 b b c
  d d d8 c b4
  c d d d
  d1

  b4 b b c
  d d d8 c b4
  c d d d
  d1

  g,4 g b b
  d d d2
  d4 c8 d d4 d
  cis cis d2

  b4 b b c
  d d d d
  c e d d8 c
  b1
}

bass = \relative c {
  g'4 g b a
  g d g g
  c b fis g
  d1

  g4 g b a
  g d g g
  c b fis g
  d1

  b4 c g' e
  fis g d2
  g4 g fis g
  a a d,2

  g4 g b a
  g d g,8 a b4
  c c d d
  g1
}

\include "hymn-template.ily"
