\include "example.ily"

meterHeight =
  #(define-scheme-function
    (parser location size)
    (number?)
    (ly:pt (* size 40)))

blank =
  #(define-scheme-function
    (parser location)
    ()
    "Create an empty fill-in-the-blank style lyric"
    #{ \markup { \underline "                    " } #})

\paper {
  ragged-right = ##t

  system-system-spacing #'basic-distance = #8
  system-system-spacing #'minimum-distance = #6

  paper-height = \meterHeight 1
}
