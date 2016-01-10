\include "common.ily"

#(set! paper-alist (cons '("example" . (cons (* 7 in) (* 60 pt))) paper-alist))

exampleHeight = #(define-scheme-function
                  (parser location size)
                  (number?)
                  (ly:pt (* size 60)))

\paper {
  #(set-paper-size "example")
  ragged-right = ##f
  print-page-number = ##f
}

\header {
  tagline = ##f
}

\layout {
  indent = #0
}
