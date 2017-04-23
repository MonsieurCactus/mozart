\version "2.18.2"

\header {
  title = \markup { \fontsize #3 \sans \medium "Sonata in F Major K. 332" }
  composer = \markup { \fontsize #3 \sans \medium "W. A. Mozart" }
}

upper = \relative c''{

  \clef treble
  \key f \major
  \time 3/4


  f,2( a4)
  c2 ( a4)
  bes2 ( g'4)
  f8 ( e ) e4 r

}

lower = \relative c {

  \clef bass
  \key f \major
  \time 3/4

  f8 ([ a c a c a   ]

  f8  [c' es c es c ])

  f,8 ([ bes d bes d bes])

  f8 ([ g bes g bes g])

}

\score {

  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \layout {
    indent = #0
  }
  \midi   {}

}
