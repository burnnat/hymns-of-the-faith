---
format: png
---
\include "example.ily"

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
\addlyrics {
  All _
  glo -- ry, laud, and
  hon -- or, to
  Thee, Re _ -- deem -- er,
  King!
}
