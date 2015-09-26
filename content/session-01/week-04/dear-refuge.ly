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
  title = "Dear Refuge of My Weary Soul"
  tagline = ##f
  poet = \markup{ \italic Text: Anne Steele, 1760 }
  composer = \markup{ \italic Tune: Anonymous, 1749 }
}

global =
{
  \numericTimeSignature
  \time 3/4
  \key ees \major
  \override Rest #'direction = #'0
  \override MultiMeasureRest #'staff-position = #0
}

verseOne = \lyricmode
{
  \override Score . LyricText #'font-size = #-1
  \override Score . LyricHyphen #'minimum-distance = #1
  \override Score . LyricSpace #'minimum-distance = #0.8
  
  \set stanza = "1. "
  
  Dear ref -- uge of my wear -- y soul,
  on Thee when sor -- rows rise;
  on Thee, when waves of trou -- ble roll,
  my faint -- ing hope re -- lies.
}

verseTwo = \lyricmode
{
  \set stanza = "2. "
  
  To Thee I tell each ris -- ing grief,
  for Thou a -- lone canst heal;
  Thy word can bring a sweet re -- lief,
  for ev -- ery pain I feel.
}

verseThree = \lyricmode
{
  \set stanza = "3. "
  
  But oh! When gloom -- y doubts pre -- vail
  I fear to call Thee mine;
  the springs of com -- fort seem to fail
  and all my hopes de -- cline.
}

verseFour = \lyricmode
{
  \set stanza = "4. "
  
  Hast Thou not bid me seek Thy face?
  And shall I seek in vain?
  And can the ear of sover -- eign grace
  be deaf when I com -- plain?
}

verseFive = \lyricmode
{
  \set stanza = "5. "
  
  Thy mer -- cy -- seat is o -- pen still;
  here let my soul re -- treat,
  with hum -- ble hope at -- tend Thy will,
  and wait be -- neath Thy feet.
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
          
          \partial 4
          
          ees4
          ees2 bes4
          ees4( f) g
          aes( g) f
          g2
          
          bes4
          g( aes) bes
          ees,( f) d
          ees2
          
          \bar "" \break
          
          bes'4
          ees( bes) c
          bes( aes) g
          c8( bes aes4) g
          f2
          
          bes4
          ees8( d c4) bes
          aes( g) f
          ees2
          
          \bar "|."
        }
      }
      
      \new Voice = "altos"
      {
        \relative c' {
          \voiceTwo
          
          bes4
          bes2 bes4
          c( d) ees
          ees2 d4
          ees2
          
          f4
          ees2 ees4
          c2 bes4
          bes2
          
          ees4
          ees( g) ees
          ees( f) ees
          ees( f) bes,
          bes2
          
          d4
          ees2 ees4
          ees2 d4
          ees2
        }
      }
      
      \new Lyrics = sopranos { s1 }
      \new Lyrics = sopranosTwo { s1 }
      \new Lyrics = sopranosThree { s1 }
      \new Lyrics = sopranosFour { s1 }
      \new Lyrics = sopranosFive { s1 }
    >>
    
    
    \new Staff
    <<
      \clef bass
      \new Voice = "tenors"
      {
        \relative c' {
          \voiceThree
          \global
          
          g4
          g2 f4
          g( bes) bes
          c( bes) bes
          bes2
          
          bes4
          bes( c) bes
          g( aes) f
          g2
          
          g8 aes
          bes2 aes4
          bes2 bes4
          aes8( bes c d) ees4
          d2
          
          bes8 aes
          g4( aes) bes
          c( bes) aes
          g2
        }
      }
      
      \new Voice = "basses"
      {
        \relative c {
          \voiceFour
          
          ees4
          ees2 d4
          c( bes) ees
          aes,( bes) bes
          ees2
          
          d4
          ees( c) g
          c( aes) bes
          ees2
          
          ees8 f
          g4( ees) aes
          g( d) ees
          aes8( g f4) ees
          bes2
          
          bes4
          c( aes) g
          aes( bes) bes
          ees2
        }
      }
    >>
    \context Lyrics = sopranos \lyricsto sopranos \verseOne
    \context Lyrics = sopranosTwo \lyricsto sopranos \verseTwo
    \context Lyrics = sopranosThree \lyricsto sopranos \verseThree
    \context Lyrics = sopranosFour \lyricsto sopranos \verseFour
    \context Lyrics = sopranosFive \lyricsto sopranos \verseFive
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
