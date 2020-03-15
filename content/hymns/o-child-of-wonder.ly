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
    
    O child of wonders, Glory's son,
    What soul can grasp all You have done?
    What song can fit? Whose heart can boast
    When comes the mighty Lord of hosts?
    What praise can human lips provide
    To match those ringing in the skies? % Luke 2:13
    What day is this, that creatures here
    Should merit perfect Love brought near?
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    A time for joy, but more - for awe;
    Stand silent, stunned in heav’nly thrall! % Zephaniah 3:17
    When fancies flee and laughs subside, % Athanasius, “On the Incarnation of the Word”, Chapter 1: “...things which those wiseacres laugh at as ‘human’...”)
    His witness, rising, meets our eye. % Zephaniah 3:8
    Come, daring, see what God has done!
    The firstborn, mighty, Holy One:
    Eternal flame shines in His eyes; % Revelation 1:14
    A world of pain, within His cries. % Isaiah 53:6
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "

    While some believe that God is dead,
    Aloof, or impotent, they said; % Zephaniah 1:12
    He comes to shake all nations through % Haggai 2:7
    His pow'r to bring, and love to prove.
    For He who spoke creation's birth % Genesis 1:3
    Now enters in, our God on Earth!
    Come, sanctify this winter's night;
    Meet shame with hope, and shadow light. % Zephaniah 3:19, John 1:5
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "

    A stranger here, sojourner God % Matthew 8:20
    But briefly rests where livestock trod.
    He bids us travel, search, and see; % Matthew 7:7
    Pray not dismiss this mystery
    Nor turn the Incarnation trite,
    What was no common pilgrim’s night:
    Hear, even as we wonder how,
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
