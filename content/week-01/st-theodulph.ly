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
      \relative c' {
        \clef treble
        \key bes \major
        \numericTimeSignature
        \time 4/4

        \partial 4
        bes4
        f' f g a
        bes2 bes4 d
        c bes bes a
        bes1
        \bar "|."
      }
    }
    \new Lyrics \lyricsto "melody" \lyricmode {
      All
      glo -- ry, laud, and
      hon -- or, to
      Thee, Re -- deem -- er,
      King!
    }
  >>
  \layout {
    indent = #0
  }
}
