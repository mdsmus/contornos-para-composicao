\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c'' {
      \bracketUp
      \override TextScript #'extra-offset = #'( 0 . 2 )
      d\startGroup^\markup{m1} d, e' a,\stopGroup
      \bar "||"
      e'\startGroup^\markup{m2} c f d\stopGroup
      \bar "||"
    }
  }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 6.6\cm
  paper-height = 2.3\cm
  line-width = 7.5\cm
  top-margin = -.5\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = 0
}
