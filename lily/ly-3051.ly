\version "2.10.33"

\score {
  \new Staff {
    \time 4/4
    \relative c'' {
      \override TextScript #'extra-offset = #'( 0 . 2 )
      d d, e' a,
      \bar "||"
      e' c f d
      \bar "||"
    }
  }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
  \midi {}
}
\paper {
  paper-width = 7.1\cm
  paper-height = 2.3\cm
  line-width = 8\cm
  top-margin = -.5\cm
  left-margin = -1.2\cm
  tagline = 0
}
