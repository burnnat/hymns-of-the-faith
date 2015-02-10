#(set! paper-alist (cons '("half-letter" . (cons (* 8.5 in) (* 6.5 in))) paper-alist))
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
  title = "How Sweet the Name of Jesus Sounds"
  tagline = ##f
  poet = \markup{ \italic Text: John Newton, 1774 }
  composer = \markup{ \italic Tune: Alexander Robert Reinagle, 1836 }
}

global =
{
  \numericTimeSignature
  \time 4/4
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
  
  How sweet the name of Je -- sus sounds
  in a be -- liev -- er’s ear!
  It soothes his sor -- rows, heals his wounds,
  and drives a -- way his fear.
}

verseTwo = \lyricmode
{
  \set stanza = "2. "
  
  It makes the wound -- ed spir -- it whole,
  and calms the trou -- bled breast;
  ’tis man -- na to the hun -- gry soul,
  and to the wear -- y, rest.
}

verseThree = \lyricmode
{
  \set stanza = "3. "
  
  O Je -- sus! Shep -- herd, Hus -- band, Friend,
  my Proph -- et, Priest and King,
  my Lord, my Life, my Way, my End,
  ac -- cept the praise I bring.
}

verseFour = \lyricmode
{
  \set stanza = "4. "
  
  Weak is the ef -- fort of my heart,
  and cold my warm -- est thought;
  but when I see Thee as Thou art,
  I’ll praise Thee as I ought.
}

verseFive = \lyricmode
{
  \set stanza = "5. "
  
  Till then I would Thy love pro -- claim
  with ev -- ery fleet -- ing breath,
  and may the mu -- sic of Thy name
  re -- fresh my soul in death!
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
          
          a'4
          d cis b a
          a g fis fis
          e d g fis
          e2.
          
          \bar "" \break
          
          fis4
          g fis b a
          a g fis d
          fis e d cis
          d2.
          
          \bar "|."
        }
      }
      
      \new Voice = "altos"
      {
        \relative c' {
          \voiceTwo
          
          d4
          fis fis d d
          e cis d d
          b8 cis d4 cis d
          cis2.
          
          d4
          d d d d
          b cis d b
          d b a a
          a2.
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
          
          fis,4
          a a g a
          a a a a
          b a g a
          a2.
          
          a4
          g a b d,
          e e d fis
          a g fis e8 g
          fis2.
        }
      }
      
      \new Voice = "basses"
      {
        \relative c {
          \voiceFour
          
          d4
          d fis g fis
          cis a d d
          g fis e d
          a2.
          
          d8 c
          b4 a g fis
          e a b b
          fis g a a
          d2.
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
