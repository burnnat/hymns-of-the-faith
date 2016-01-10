#(define meterstyle
  '((oneup cross #f 0)
    (onedown slash #f 0)))

<<
  \new DrumStaff {
    \new DrumVoice = "voice" { \rhythm }
  }

  \new Lyrics \lyricsto "voice" { \text }
>>

\layout
{
  \context
  {
    \Score
    \omit BarNumber
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }

  \context {
    \DrumStaff

    \remove Staff_symbol_engraver
    \remove Time_signature_engraver
    \remove Clef_engraver
    \remove Bar_engraver

    \override Stem #'transparent = ##t
    \override Stem #'Y-extent = ##f

    drumStyleTable = #(alist->hash-table meterstyle)
  }

  \context
  {
    \Lyrics
    \override LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #2.0
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4))
  }
}
