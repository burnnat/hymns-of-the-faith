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
  title = "A Babe is Born"
  tagline = ##f
  poet = \markup{ \italic Text: Traditional English }
  composer = \markup{ \italic Tune: Traditional English }
}

global =
{
  \numericTimeSignature
  \time 4/4
  \key c \minor
  \override Rest #'direction = #'0
  \override MultiMeasureRest #'staff-position = #0
}

verseOne = \lyricmode
{
  \override Score . LyricText #'font-size = #-1
  \override Score . LyricHyphen #'minimum-distance = #1
  \override Score . LyricSpace #'minimum-distance = #0.8
  
  \set stanza = "1. "
  
  A babe is born, all of a maid,
  to bring sal -- va -- tion un -- to us:
  no more are we to sing a -- fraid.
}

latinOne = \lyricmode
{
  \override LyricText #'font-shape = #'italic
  Ve -- ni, Cre -- a -- tor Spi -- ri --
  \markup { \concat { "tus." \normal-text{ \super 1 } } }
}

verseTwo = \lyricmode
{
  \set stanza = "2. "
  At Beth -- le -- hem, that bless -- ed place,
  the child of bliss then born He was;
  Him aye to serve, God give us grace,
}

latinTwo = \lyricmode
{
  \override LyricText #'font-shape = #'italic
  O Lux be -- a -- ta Trin -- i --
  \markup { \concat { "tas." \normal-text{ \super 2 } } }
}

verseThree = \lyricmode
{
  \set stanza = "3. "
  There came three kings out of the east,
  to wor -- ship there that King so free
  with gold and myrrh and frank -- in -- cense,
}

latinThree = \lyricmode
{
  \override LyricText #'font-shape = #'italic
  A so -- lis or -- tus car -- di --
  \markup { \concat { "ne." \normal-text{ \super 3 } } }
}

verseFour = \lyricmode
{
  \set stanza = "4. "
  
  The shep -- herds heard an an -- gel cry,
  O mer -- ry song that night sang he,
  Why are ye all so sore a -- ghast,
}

latinFour = \lyricmode
{
  \override LyricText #'font-shape = #'italic
  Jam lu -- cis or -- to si -- de --
  \markup { \concat { "re?" \normal-text{ \super 4 } } }
}

verseFive = \lyricmode
{
  \set stanza = "5. "
  
  The an -- gel came down with a cry,
  a fair and joy -- ful song sang he,
  and in the wor -- ship of that child,
}

latinFive = \lyricmode
{
  \override LyricText #'font-shape = #'italic
  Glo -- ri -- a Ti -- bi Do -- mi --
  \markup { \concat { "ne." \normal-text{ \super 5 } } }
}

\markup {
  \footnote "" \concat {
    \super 1 " Come, creator spirit"
  }
  \footnote "" \concat {
    \super 2 " O blessed light of the Trinity"
  }
  \footnote "" \concat {
    \super 3 " From the place of the rising sun"
  }
  \footnote "" \concat {
    \super 4 " The star of light now having risen"
  }
  \footnote "" \concat {
    \super 5 " Glory to you, O Lord"
  }
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
          
          c4
          c g' f g
          ees4. d8 c4
          
          g'
          c d ees d
          c bes8( c) g4
          
          \bar "" \break
          
          g
          c d ees d
          c bes8( c) g4.
          
          f8
          ees4 f g4. ees8
          c4 c c
          
          \bar "|."
        }
      }
      
      \new Voice = "altos"
      {
        \relative c' {
          \voiceTwo
          
          c4
          c c c b
          c4. b8 c4
          
          d
          g g g g
          ees f ees
          
          d
          ees f g f
          ees c c4.
          
          c8
          c4 d ees4. c8
          c4 aes g
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
        \relative c {
          \voiceThree
          \global
          \partial 4
          
          ees4
          ees g aes g
          g4. f8 ees4
          
          b'
          c b c b
          c c c
          
          b
          c g g aes
          g f ees4.
          
          c'8
          ees4 d c4. g8
          g4 f e?
        }
      }
      
      \new Voice = "basses"
      {
        \relative c {
          \voiceFour
          
          c4
          c ees d g,
          c4. c8 c4
          
          g'
          ees g c g
          aes f c'
          
          g
          c, c c c
          c c c4.
          
          aes'8
          g4 f ees4. ees8
          ees4 f c
        }
      }
    >>
    \context Lyrics = sopranos \lyricsto sopranos {
      \verseOne
      \latinOne
    }
    \context Lyrics = sopranosTwo \lyricsto sopranos {
      \verseTwo
      \latinTwo
    }
    \context Lyrics = sopranosThree \lyricsto sopranos {
      \verseThree
      \latinThree
    }
    \context Lyrics = sopranosFour \lyricsto sopranos {
      \verseFour
      \latinFour
    }
    \context Lyrics = sopranosFive \lyricsto sopranos {
      \verseFive
      \latinFive
    }
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
