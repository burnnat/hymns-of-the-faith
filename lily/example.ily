\version "2.18.2"

#(set! paper-alist (cons '("example" . (cons (* 7 in) (* 1 in))) paper-alist))

\paper {
  #(set-paper-size "example")
  ragged-right = ##f
}

\header {
  tagline = ##f
}

\layout {
  indent = #0
}
