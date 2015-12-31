\score
{
  <<
    \new Staff
    <<
      \new Voice = "sopranos" {
        \global
        \voiceOne
        \soprano
        
        \bar "|."
      }

      \new Voice = "altos"
      {
        \voiceTwo
        \alto
      }

      \stanzas
    >>

    \new Staff
    <<
      \clef bass
      \new Voice = "tenors"
      {
        \global
        \voiceThree
        \tenor
      }

      \new Voice = "basses"
      {
        \voiceFour
        \bass
      }
    >>
  >>
}
