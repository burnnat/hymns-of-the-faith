\include "hymn.ily"

\header
{
  title = "O Child of Wonders"
  poet = "N. Fielding Burns, 2019"
  composer = "N. Fielding Burns, 2019"
  tune = "Son of Glory"
  meter = "8.8.8.8 D"
}

global =
{
  \time 3/4
  \key c \major
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "
    
    O child of won -- ders, Glo -- ry's son,
    what soul can grasp all You have done?
    What song can fit? Whose heart can boast
    when comes the might -- y Lord of hosts?
    What praise can hu -- man lips pro -- vide
    to match those ring -- ing in the skies? % Luke 2:13
    What day is this, that crea -- tures here
    should mer -- it per -- fect Love brought near?
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    A time for joy, but more, for awe;
    stand si -- lent, stunned in heav’n -- ly thrall! % Zephaniah 3:17
    When fan -- cies flee and laughs sub -- side, % Athanasius, “On the Incarnation of the Word”, Chapter 1: “...things which those wiseacres laugh at as ‘human’...”)
    His wit -- ness, ris -- ing, meets our eye. % Zephaniah 3:8
    Come, dar -- ing, see what God has done!
    The first -- born, might -- y, Ho -- ly One:
    e -- ter -- nal flame shines in His eyes; % Revelation 1:14
    a world of pain, with -- in His cries. % Isaiah 53:6
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    While some be -- lieve that God is dead,
    a -- loof, or im -- po -- tent, they said; % Zephaniah 1:12
    He comes to shake all na -- tions through % Haggai 2:7
    His pow'r to bring, and love to prove.
    For He who spoke cre -- a -- tion's birth % Genesis 1:3
    now en -- ters in, our God on Earth!
    Come, sanc -- ti -- fy this win -- ter's night;
    meet shame with hope, and shad -- ow light. % Zephaniah 3:19, John 1:5
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    A stran -- ger here, so -- journ -- er God % Matthew 8:20
    but brief -- ly rests where live -- stock trod.
    He bids us trav -- el, search, and see; % Matthew 7:7
    pray not dis -- miss this mys -- ter -- y
    nor turn the In -- car -- na -- tion trite,
    what was no com -- mon pil -- grim’s night;
    hear, e -- ven as we won -- der how,
    at last, the Great I AM, is now! % John 8:58
}
>>

soprano = \relative c'' {
  \partial 4

  g4
  e2 f4
  g2 g4
  \time 5/4
  a b c2 g4
  \time 4/4
  c b a g
  \time 5/4
  g fis g2

  \linebreak

  g4
  \time 3/4
  e2 f4
  g2 g4
  \time 5/4
  a b c2 g4
  \time 4/4
  a g g e
  f d c2

  \linebreak

  \time 6/4
  d2 d4 e f f
  \time 4/4
  g e d2
  \time 6/4
  e2 e4 f g a
  \time 5/4
  a gis a2
  
  \linebreak
  
  b4
  \time 3/4
  c2 a4
  g2 g4
  \time 5/4
  a c b2 g4
  \time 4/4
  a c g e
  f d c2

  \bar "|."
}

alto = \relative c' {
  c4
  c2 c4
  b2 d4
  f f e2 e4
  e d e e
  d d d2
  
  d4
  c2 c4
  b2 d4
  f f e2 e4
  f e d c
  d b c2

  a2 a4 cis d d
  e cis a2
  c2 c4 b c f
  e e e2
  
  d4
  e2 c4
  c2 e4
  c f d2 c4
  c f d c
  d b c2
}

tenor = \relative c {
  g'4
  g2 f4
  g2 b4
  c d c2 b4
  a g a b
  a a b2
  
  g4
  g2 f4
  g2 b4
  c d c2 c4
  c c b c
  g f e2

  f2 f4 e f a
  a g f2
  g2 g4 g g c
  b b c2
  
  g4
  g2 a4
  g2 g4
  a a b2 c8 b
  a4 a g g
  g f e2
}

bass = \relative c {
  e4
  c2 a4
  g2 g'4
  f d a2 e'4
  a, b c e
  d d g,2
  
  b4
  c2 a4
  g2 g'4
  f d a2 e'4
  f g g g
  g, g c2

  d2 d4 a d d
  e a, d2
  c2 c4 d e f
  e e a,2
  
  g4
  c2 f4
  e2 c4
  f d g2 e4
  f8 e d c b4 c
  d g, c2
}

\include "hymn-template.ily"
