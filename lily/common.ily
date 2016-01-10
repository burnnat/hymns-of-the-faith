\version "2.18.2"

linebreak =
  #(define-music-function
    (parser location)
    ()
    "Force a linebreak at a particular point"
    #{ \bar "" \break #})
