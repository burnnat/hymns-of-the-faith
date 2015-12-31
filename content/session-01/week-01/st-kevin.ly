---
format: png
---
\include "example.ily"

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
\addlyrics {
  All glo -- ry, _ laud,
  and hon -- or,
  to Thee, Re -- deem --
  er, King!
}
