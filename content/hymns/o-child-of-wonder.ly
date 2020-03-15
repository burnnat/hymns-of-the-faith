\include "hymn.ily"

\header
{
  title = "O Child of Wonder"
  poet = "N. Fielding Burns, 2019"
  composer = "N. Fielding Burns, 2019"
  tune = "Untitled"
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
    What soul can grasp all You have done?
    What song can fit? Whose heart can boast
    When comes the might -- y Lord of hosts?
    What praise can hu -- man lips pro -- vide
    To match those ring -- ing in the skies? % Luke 2:13
    What day is this, that crea -- tures here
    Should mer -- it per -- fect Love brought near?
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    A time for joy, but more - for awe;
    Stand si -- lent, stunned in heav’n -- ly thrall! % Zephaniah 3:17
    When fan -- cies flee and laughs sub -- side, % Athanasius, “On the Incarnation of the Word”, Chapter 1: “...things which those wiseacres laugh at as ‘human’...”)
    His wit -- ness, ris -- ing, meets our eye. % Zephaniah 3:8
    Come, dar -- ing, see what God has done!
    The first -- born, might -- y, Ho -- ly One:
    E -- ter -- nal flame shines in His eyes; % Revelation 1:14
    A world of pain, with -- in His cries. % Isaiah 53:6
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    While some be -- lieve that God is dead,
    A -- loof, or im -- po -- tent, they said; % Zephaniah 1:12
    He comes to shake all na -- tions through % Haggai 2:7
    His pow'r to bring, and love to prove.
    For He who spoke cre -- a -- tion's birth % Genesis 1:3
    Now en -- ters in, our God on Earth!
    Come, sanc -- ti -- fy this win -- ter's night;
    Meet shame with hope, and shad -- ow light. % Zephaniah 3:19, John 1:5
}

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    A stran -- ger here, so -- journ -- er God % Matthew 8:20
    But brief -- ly rests where live -- stock trod.
    He bids us trav -- el, search, and see; % Matthew 7:7
    Pray not dis -- miss this mys -- ter -- y
    Nor turn the In -- car -- na -- tion trite,
    What was no com -- mon pil -- grim’s night:
    Hear, e -- ven as we won -- der how,
    At last, the Great I AM, is now! % John 8:58
}
>>

soprano = \relative c'' {
  \partial 4

  g4
  e2 f4
  g2 g4
  \time 4/4
  a b c g
  \time 6/4
  c b a g g fis
  \time 3/4
  g2

  \linebreak

  g4
  e2 f4
  g2 g4
  \time 4/4
  a b c g
  \time 6/4
  a f g e f d
  \time 4/4
  c2

  \linebreak

  d2
  d4 e f f
  \time 6/4
  g e d2 e2
  e4 f g a a eis
  \time 3/4
  a2
  
  \linebreak
  
  g4
  e2 f4
  g2 g4
  \time 4/4
  a b c g
  a g g e
  f d c2

  \bar "|."
}

alto = \relative c' {
}

tenor = \relative c {
}

bass = \relative c {
}

\include "hymn-template.ily"
