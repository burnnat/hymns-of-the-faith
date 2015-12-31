---
format: png
---
\include "example.ily"

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
\addlyrics {
  All
  glo -- ry, laud, and
  hon -- or, to
  Thee, Re -- deem -- er,
  King!
}
