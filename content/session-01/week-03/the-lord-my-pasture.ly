\include "hymn.ily"

\header
{
  title = "The Lord My Pasture Shall Prepare"
  poet = \markup \poet "Joseph Addison, 1712"
  composer = \markup \composer "Henry Carey, 1723"
}

global =
{
  \globalDefaults
  \time 3/4
  \key f \major
  \partial 4
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "
    
    The Lord my pas -- ture shall pre -- pare
    and feed me with a shep -- herd’s care;
    His pres -- ence shall my wants sup -- ply
    and guard me with a watch -- ful eye;
    My noon -- day _ walks He _ shall at -- _ tend
    and all my mid -- night hours de -- fend.
  }
  
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "
    
    When in the sul -- try glebe I faint
    or on the thirst -- y moun -- tain pant,
    to fer -- tile vales and dew -- y meads
    my wear -- y, wan -- dering steps He leads,
    where peace -- ful _ riv -- ers, _ soft and _ slow,
    a -- mid the ver -- dant land -- scape flow.
  }
  
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "
    
    Though in a bare and rug -- ged way,
    through de -- vious lone -- ly wilds, I stray,
    Thy boun -- ty shall my pains be -- guile;
    The bar -- ren wil -- der -- ness shall smile,
    with sud -- den _ greens and _ herb -- age _ crowned,
    and streams shall mur -- mur all around.
  }
  
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "
    
    Though in the paths of death I tread,
    with gloom -- y hor -- rors o -- ver -- spread,
    my stead -- fast heart shall fear no ill,
    for Thou, O Lord, art with me still;
    Thy friend -- ly _ crook shall _ give me _ aid
    and guide me through the dread -- ful shade.
  }
>>

soprano = \relative c' {
  c'4
  bes( a) d
  f,( e) f
  bes( a) g
  a2
  
  a4
  g2 b4
  c2 c,4
  f4( e) d
  c2
  
  c'4
  bes( a) d
  f,( e) f
  bes( a) g
  a2
  
  a4
  g2 b4
  c2 c,4
  f4( e) d
  c2
  
  c'4
  d2 c8 bes
  c2 bes8 a
  bes2 a8 g
  a2
  
  a4
  g2 bes4
  a4.( g8) f4
  g( f) e
  f2
}
     
alto = \relative c' {
  f4
  f2 f4
  c2 c4
  d2 c4
  c2
  
  c4
  c2 f4
  e2 c4
  d( c) b
  c2
  
  f4
  f2 f4
  c2 c4
  d2 c4
  c2
  
  c4
  c2 f4
  e2 c4
  d( c) b
  c2
  
  f4
  f2 e4
  e( f) d
  d( g) f8 e
  f2
  
  f4
  e4.( f8) g4
  f( e) d
  d( c) c
  c2
}

tenor = \relative c' {
  a4
  d( c) bes
  a( g) f
  g( f) e
  f2
  
  f4
  g2 f4
  g2 g4
  a( g) g
  e2
  
  a4
  d( c) bes
  a( g) f
  g( f) e
  f2
  
  f4
  g2 f4
  g2 g4
  a( g) g
  e2
  
  c'4
  bes( c) bes
  a2 d4
  g,( bes) c
  c2
  
  c4
  c2 c4
  c4.( bes8) a4
  bes( a) g
  a2
}

bass = \relative c {
  f4
  f2 bes,4
  c( bes) a
  bes2 c4
  f2
  
  f4
  e2 d4
  c4.( d8) e4
  f( g) g,
  c2
  
  f4
  f2 bes,4
  c( bes) a
  bes2 c4
  f2
  
  f4
  e2 d4
  c4.( d8) e4
  f( g) g,
  c2
  
  a'4
  bes( a) g
  a2 f4
  g2 c,4
  f2
  
  a,4
  c4.( d8) e4
  f( c) d
  bes( c) c
  f2
}

\include "hymn-template.ily"