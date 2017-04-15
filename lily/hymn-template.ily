\score
{
  <<
    \new Staff
    <<
      \new Voice = "sopranos" {
        \globalDefaults
        \global
        \voiceOne
        \soprano

        \new Voice = "refrain" {
          \voiceThree
          \refrain
        }

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
        \globalDefaults
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
