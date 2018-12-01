\include "common.ily"

#(set! paper-alist (cons '("half-letter" . (cons (* 8.5 in) (* 6.5 in))) paper-alist))

#(define-markup-command
  (frompropertysmallcaps layout props symbol)
  (symbol?)
  "Read a property value as small caps markup"
  (let
    ((m (chain-assoc-get symbol props)))
    (if
      (markup? m)
      (interpret-markup
        layout
        props
        (markup #:smallCaps m))
      empty-stencil)))

dropLyrics =
  #(define-music-function
    (parser location offset music)
    (number? ly:music?)
    "Adjust vertical spacing of lyrics"
    #{
      \override LyricText.extra-offset = #(cons 0 offset)
      \override LyricHyphen.extra-offset = #(cons 0 offset)
      \override LyricExtender.extra-offset = #(cons 0 offset)
      \override StanzaNumber.extra-offset = #(cons 0 offset)
      $music
      \revert LyricText.extra-offset
      \revert LyricHyphen.extra-offset
      \revert LyricExtender.extra-offset
      \revert StanzaNumber.extra-offset
    #})

markRefrain =
  #(define-music-function
    (parser location)
    ()
    "Add a rehearsal mark indicating the start of a refrain"
    #{
      \once \override Score.RehearsalMark.self-alignment-X = #LEFT
      \mark \markup {
        \pad-to-box #'(0 . 0) #'(0 . 4) {
          \normalsize
          \italic { Refrain }
        }
      }
    #})

#(set-global-staff-size 18.5)

\paper
{
  #(set-paper-size "letter")

  annotate-spacing = ##f

  indent = 0.0
  page-count = 1

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
    #'((basic-distance . 12)
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60))

  top-margin = 0.65\in
  bottom-margin = 0.65\in
  left-margin = 0.65\in
  right-margin = 0.65\in

  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \larger \larger \bold
        \fromproperty #'header:title
      }
      \fill-line {
        \line {
          \italic \fromproperty #'header:poet-title
          \fromproperty #'header:poet
        }
        \line {
          \italic \fromproperty #'header:composer-title
          \fromproperty #'header:composer
        }
      }
      \fill-line {
        \line {}
        \line {
          \italic \fromproperty #'header:arranger-title
          \fromproperty #'header:arranger
        }
      }
    }
  }

  oddFooterMarkup = \markup {
    \small
    \column {
      \fill-line {
        \line {}
        \on-the-fly #first-page \frompropertysmallcaps #'header:tune
      }
      \fill-line {
        \line {}
        \on-the-fly #first-page \fromproperty #'header:meter
      }
    }
  }
}

\header
{
  poet-title = "Text:"
  composer-title = "Tune:"
}

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

  \overrideTimeSignatureSettings
    3/4
    1/4
    #'(1 1 1)
    #'()

  \mergeDifferentlyDottedOn
}

% Not all hymns have a refrain, so define an empty on by default.
refrain = {}

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
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1
  }
}
