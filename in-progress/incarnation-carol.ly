\paper
{
  #(set-paper-size "letter")
  
  indent = 0.0
  markup-system-spacing #'basic-distance = #12
  
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in  
}

\header
{
  title = "Incarnation Carol"
  tagline = ##f
  composer = "N. Fielding Burns, 2015"
}

global =
{
  \numericTimeSignature
  \time 3/4
  \key d \major
  \override Rest #'direction = #'0
  \override MultiMeasureRest #'staff-position = #0
}

verseOne = \lyricmode
{
  \override Score . LyricText #'font-size = #-1
  \override Score . LyricHyphen #'minimum-distance = #1
  \override Score . LyricSpace #'minimum-distance = #0.8
  
  \set stanza = "1. "
  
  Fa -- ther al -- might -- y made em -- pty in flesh,
  Je -- su, Em -- man -- u -- el, Christ -- us,
  we praise you, cre -- a -- tor, born con -- queror of death,
  God yet be -- fore us, now with us.
}

verseTwo = \lyricmode
{
  \set stanza = "2. "
  
  Born Prince of Peace in a loud, hec -- tic world,
  few would ack -- now -- ledge or no -- tice;
  Lord, aid us, your whis -- pers of grace to be heard,
  com -- fort and calm and sus -- tain us.
}

verseThree = \lyricmode
{
  \set stanza = "3. "
  
  Je -- sus, your pre -- sence is all we re -- quire,
  bright, shin -- ing Light for our dark -- ness.
  Come, guide us with pill -- ars of cloud and of fire,
  Spir -- it, with -- in and a -- mong us.
}


\score
{
  <<
    \new Staff
    <<
      \new Voice = "sopranos" {
        \relative c' {
          \voiceOne
          \global
          
          d4 d e
          d d a'
          b a g
          a2.
          
          b4 cis d
          d a d,
          
          fis e2~
          e
          
          \bar "" \break

          fis4
          fis fis4. e8
          d4 d a'
          b cis d
          e2.
          
          d4 a4. g8
          fis4 a d,
          e2.
          d2.
          
          \bar "|."
        }
      }
      
      \new Voice = "altos"
      {
        \relative c' {
          \voiceTwo
          
          b4 b cis
          d d fis
          g fis e
          e( d2)
          
          d4 d4. e8
          fis4 d b
          b2 d4~(
          d cis)
          
          cis
          d d cis
          d d fis
          g a b
          a2.
          
          fis4 d4. d8
          d4 e d
          b cis2
          a2.
        }
      }
      
      \new Lyrics = sopranos { s1 }
      \new Lyrics = sopranosTwo { s1 }
      \new Lyrics = sopranosThree { s1 }
    >>
    
    
    \new Staff
    <<
      \clef bass
      \new Voice = "tenors"
      {
        \relative c {
          \voiceThree
          \global
          
          fis4 fis a
          fis fis a
          d b b
          a2.
          
          g4 a a
          a a fis
          e2.
          e2
          
          fis4
          fis b a
          fis a c
          d d d
          b2( cis4)
          
          d fis,4. g8
          a4 fis a
          g2.
          fis2.
        }
      }
      
      \new Voice = "basses"
      {
        \relative c {
          \voiceFour
          
          b4 b a
          d d d
          g, g g
          fis2.
          
          g4 g g
          fis fis b
          gis2.
          a2
          
          ais4
          b b cis
          d fis a
          g fis f
          e2.
          
          d4 d4. b8
          a4 a fis
          g a2
          d2.
        }
      }
    >>
    \context Lyrics = sopranos \lyricsto sopranos \verseOne
    \context Lyrics = sopranosTwo \lyricsto sopranos \verseTwo
    \context Lyrics = sopranosThree \lyricsto sopranos \verseThree
  >>
  
  \layout
  {
    \context
    {
      \Lyrics
      \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    }
  }
}
