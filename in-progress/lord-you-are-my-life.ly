\include "hymn.ily"

\header
{
  title = "Lord, You Are My Life"
  poet = "N. Fielding Burns, 2020"
  composer = "N. Fielding Burns, 2020"
  tune = "Symbolum 77"
  meter = "11.11.11.12.11.8"
}

global =
{
  \time 4/4
  \key f \minor
}

stanzas = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "
    
    Lord, You are my life, my rock and sol -- id ground.
    Lord, You are my way, the truth that leads me on.
    Al -- ways will I fol -- low, long as I shall breathe,
    guid -- ed by your Ho -- ly Word, ev -- er may I be!
    Noth -- ing will I fear while You are by my side;
    stay with me, my Com -- fort and Guide.
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "

    Je -- sus, born of Mar -- y, I be -- lieve in You:
    Son of God E -- ter -- nal, full of grace and truth. % John 1:14
    You who rose to life, in love for us had died.
    One with God the Fa -- ther and with the church Your bride,
    soon the day is com -- ing when You’ll come a -- gain;
    bring us home to live with You then!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "
    
    Lord, You are my strength, my for -- tress and my shield.
    Lord, You are my peace, my free -- dom from all fear.
    Noth -- ing in this world can sep -- a -- rate us, Lord;
    by Your hand, I know my sal -- va -- tion is as -- sured!
    Spare me from all e -- vil, cure my sin -- ful ways;
    may I live in mer -- cy and grace!
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "
    
    Fa -- ther of cre -- a -- tion, I be -- lieve in You.
    Je -- sus, dear -- est sav -- ior, still I hope in You.
    Dwell a -- mong us, Spir -- it, source of strength and joy.
    From a thou -- sand na -- tions You called us by Your voice;
    send us then un -- to a thou -- sand lands be -- yond,
    seed -- lings of the king -- dom of God.
  }
>>

soprano = \relative c' {
  f8 f f g aes4 aes
  g8 aes g ees c2
  
  f8 f f g aes4 aes
  g8 aes bes des c2

  des8 c des f, f4 g
  c8 bes c ees, f2
  
  f8 g aes f g aes bes4
  aes8 bes c des c2

  des8 c des f, f( g) g4
  c8 bes c ees, f2
  
  f8 g aes f g aes g4
  f1

  \bar "|."
}

alto = \relative c' {
  c8 c c c f4 f
  ees8 ees des des c2
  
  c8 c c c f4 ees
  f8 f f f e4( f)
  
  f8 ees f des des4 des
  ees8 ees ees c des2
  
  des8 des des des ees ees ees4
  des8 des f f f4( e)
  
  f8 f f des des4 des
  ees8 ees ees ees c2
  
  des8 ees f des ees ees ees4
  c1
}

tenor = \relative c' {
  aes8 aes aes bes des4 c
  bes8 bes bes bes aes2
  
  aes8 aes aes aes des4 aes
  des8 c bes bes g4( aes)
  
  bes8 bes bes aes aes4 bes
  aes8 aes aes g aes2
  
  aes8 g f aes bes aes g4
  f8 f aes aes g2
  
  bes8 bes aes aes aes4 bes
  aes8 aes aes aes aes2
  
  aes8 aes aes aes bes aes bes4
  a?1
}

bass = \relative c {
  f8 f ees ees des4 des
  ees8 ees ees ees aes4( g)
  
  f8 f ees ees des4 c
  bes8 bes g' g c,4( f)
  
  bes,8 bes bes bes ees4. des8
  c bes aes aes des4( c)
  
  bes8 bes bes bes c c c4
  g8 g g g c2
  
  bes8 bes bes bes ees4 ees
  aes8 aes g g f4( ees)
  
  des8 c bes des ees c ees4
  f1
}

\include "hymn-template.ily"
