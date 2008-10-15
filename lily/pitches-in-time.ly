\version "2.10.33"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 5/4
      \relative c'' {
        \override Stem #'transparent = ##t
        a f bes d
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 4.6\cm
  paper-height = 3\cm
  line-width = 5.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}
