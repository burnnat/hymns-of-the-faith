#(set! paper-alist (cons '("half-letter" . (cons (* 8.5 in) (* 6.5 in))) paper-alist))

\paper
{
    #(set-paper-size "half-letter")
    
    indent = 0.0
    markup-system-spacing #'basic-distance = #10
    top-margin = 0.5 \in
    bottom-margin = 0.5 \in
}

\header
{
    title = "As Pants the Hart"
    tagline = ""
}

global =
{
    \time 3/4
    \key aes \major
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}

sopWords = \lyricmode
{
    \override Score . LyricText #'font-size = #-1
    \override Score . LyricHyphen #'minimum-distance = #1
    \override Score . LyricSpace #'minimum-distance = #0.8
    
    \set stanza = "1. "
    
    As pants the hart for _ cool -- ing streams
    when heat -- ed _ in the chase,
    so longs my soul for you, O God,
    and your re -- _ fresh -- ing grace.
}

sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
    
    With roar -- ing of thy _ ca -- ta -- racts,
    the deep calls _ un -- to deep.
    Thy bil -- lows all pass o -- ver me,
    thy waves up -- _ on me sweep.
}

sopWordsThree = \lyricmode
{
    \set stanza = "3. "
    
    By light of day, Lord _ you com -- mand
    your ev -- er -- _ last -- ing love.
    At night, your song is in my heart,
    in prayer to _ you a -- bove.
}

sopWordsFour = \lyricmode
{
    \set stanza = "4. "
    
    Why rest -- less, why cast _ down, my soul?
    Hope still, and _ you shall sing
    the praise of Him who is your God,
    your health’s e -- _ ter -- nal spring.
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
            aes2 f4
            ees2 aes8 bes
            c2 bes4
            aes2 c4
            ees2 c8 bes
            aes2 c4
            bes2.~ bes2
            
            ees4
            c2 bes4
            aes2 c4
            des4.( ees8) c4
            bes2 c4
            ees,( f) aes8 bes
            c2 bes4
            aes2.~ aes2
            
            
            \bar "|."
          }
	    }

	    \new Voice = "altos"
	    {
          \relative c' {
            \voiceTwo
            
            ees4
            ees2 des4
            c2 ees8 f
            ees2 ees8 des
            c2 ees4
            ees2 ees4
            ees2 ees4
            ees2.~ ees2
            
            ees4
            ees2 des4
            c2 ges'4
            f2 ees4
            ees2 ees4
            ees( des) c8 des
            ees2 ees8 des
            c2.~ c2
          }
	    }

	    \new Lyrics = sopranos { s1 }
	    \new Lyrics = sopranosTwo { s1 }
	    \new Lyrics = sopranosThree { s1 }
	    \new Lyrics = sopranosFour { s1 }
	>>


	\new Staff
	<<
	    \clef bass
	    \new Voice = "tenors"
	    {
          \relative c' {
            \voiceThree
            \global
            
            c4
            aes2 aes4
            aes2 aes4
            aes2 g4
            aes2 aes4
            c2 aes8 g
            aes2 aes4
            g2.~ g2
            
            bes4
            aes2 g4
            aes2 aes4
            aes2 aes4
            g2 aes4
            aes2 aes4
            aes( f) g
            aes2.~ aes2
          }
	    }

	    \new Voice = "basses"
	    {
          \relative c {
            \voiceFour
            
            aes4
            c2 des4
            aes2 c8 des
            ees2 ees4
            aes,2 aes'4
            aes2 aes,8 bes
            c2 aes4
            ees'2.~ ees2
            
            g4
            aes2 ees4
            f2 ees4
            des2 aes4
            ees'2 aes,4
            c4( des) f
            ees2 ees4
            aes,2.~ aes2
          }
	    }
	>>
	\context Lyrics = sopranos \lyricsto sopranos \sopWords
	\context Lyrics = sopranosTwo \lyricsto sopranos \sopWordsTwo
	\context Lyrics = sopranosThree \lyricsto sopranos \sopWordsThree
	\context Lyrics = sopranosFour \lyricsto sopranos \sopWordsFour
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
