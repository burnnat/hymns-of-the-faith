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
        \key ees \major
        \numericTimeSignature
        \time 4/4

        \partial 4
        ees8 f
        g4 c bes aes
        g2 g4 g
        bes aes8 g f4 f
        ees1
        \bar "|."
      }
    }
    \new Lyrics \lyricsto "melody" \lyricmode {
      All _
      glo -- ry, laud, and
      hon -- or, to
      Thee, Re _ -- deem -- er,
      King!
    }
  >>
  \layout {
    indent = #0
  }
}
