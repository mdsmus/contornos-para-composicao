\version "2.10.33"

\book {
  \score {
    \new Staff {
      \relative c' {
        \override TextScript #'extra-offset = #'( 0 . -1.5 )
        d8\startGroup_"CAS ++-+" f a g a2\stopGroup
        cis,8\startGroup_"CAS ++-+" e bes' a bes2\stopGroup
        c,?8\startGroup_"CAS ++-+" a' d bes c2\stopGroup
        bes,8\startGroup_"CAS ++-+" d bes' g d'2\stopGroup
        a,8\startGroup_"CAS ++-+" f' e' d f2\stopGroup
        aes,,8\startGroup_"CAS ++-+" f' d' b g'2\stopGroup
        g,,8\startGroup_"CAS ++-+" e' cis' bes bes'4.\fermata\stopGroup_"CAS --+-" \cadenzaOn a8 gis a e cis! e\fermata d4
        \bar "|."
      }
    }
    \layout {
      \context { \Score
                 \override MetronomeMark #'extra-offset = #'(-9 . 0)
                 \override MetronomeMark #'padding = #'3
               }
      \context { \Staff
                 \override TimeSignature #'style = #'numbered
               }
      \context { \Voice
                 \override Glissando #'thickness = #3
                 \override Glissando #'gap = #0.1
               }
      \context {
        \Staff \consists "Horizontal_bracket_engraver"
      }
    }
  }
  \paper {
    #(set-paper-size "a4")
  paper-width = 15.1\cm
  paper-height = 7\cm
  line-width = 16\cm
  top-margin = -.5\cm
  left-margin = -1.2\cm
  tagline = 0
  }
}
