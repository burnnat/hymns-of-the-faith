\include "common.ily"

#(set! paper-alist (cons '("half-letter" . (cons (* 8.5 in) (* 6.5 in))) paper-alist))

\paper
{
  #(set-paper-size "letter")

  annotate-spacing = ##f

  indent = 0.0

  top-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 0))

  markup-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 0)
       (padding . 0.5)
       (stretchability . 30))

  system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60))

  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
}

\header
{
  tagline = ##f
}

linebreak =
  #(define-music-function
    (parser location)
    ()
    "Force a linebreak at a particular point"
    #{ \bar "" \break #})

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

#(define-markup-command
  (harmonizer layout props contents)
  (markup?)
  "Format a harmonizer definition"
  (interpret-markup layout props
    (markup (#:italic "Harmonized:") contents)))

globalDefaults =
{
  #(set-accidental-style 'modern-voice)

  \numericTimeSignature
  \override Rest #'direction = #'0
  \override MultiMeasureRest #'staff-position = #0

  \overrideTimeSignatureSettings
    4/4
    1/4
    #'(1 1 1 1)
    #'()

  \mergeDifferentlyDottedOn
}

\layout
{
  \context
  {
    \Score
    \omit BarNumber
    \override LyricText #'font-size = #-1
    \override LyricHyphen #'minimum-distance = #1
    \override LyricSpace #'minimum-distance = #0.8
  }

  \context
  {
    \Lyrics
    \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.5
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #0.5
  }
}
