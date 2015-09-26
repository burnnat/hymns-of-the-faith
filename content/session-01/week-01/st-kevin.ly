---
format: png
---
#(set! paper-alist (cons '("example" . (cons (* 7 in) (* 1 in))) paper-alist))

\paper {
  #(set-paper-size "example")
  ragged-right = ##f
}

\header {
  tagline = ""
}

\score{
  <<
    \new Voice = "melody" {
      \relative c'' {
        \clef treble
        \key f \major
        \numericTimeSignature
        \time 4/4

        a4 a a8 g f4
        a bes c2
        f,4 g a bes
        a2 g
        \bar "|."
      }
    }
    \new Lyrics \lyricsto "melody" \lyricmode {
      All glo -- ry, _ laud,
      and hon -- or,
      to Thee, Re -- deem --
      er, King!
    }
  >>
  \layout {
    indent = #0
  }
}
