\version "2.18.2"

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
  tagline = ##f
}

#(define-markup-command
  (poet layout props contents)
  (markup?)
	"Format a poet definition"
  (interpret-markup layout props
    (markup (#:italic "Text:") contents)))

#(define-markup-command
  (composer layout props contents)
  (markup?)
  "Format a composer definition"
  (interpret-markup layout props
    (markup (#:italic "Tune:") contents)))

globalDefaults =
{
  \numericTimeSignature
  \override Rest #'direction = #'0
  \override MultiMeasureRest #'staff-position = #0
}

\layout
{
  \context
  {
    \Score
    \override LyricText #'font-size = #-1
    \override LyricHyphen #'minimum-distance = #1
    \override LyricSpace #'minimum-distance = #0.8
  }

  \context
  {
    \Lyrics
    \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
  }
}
