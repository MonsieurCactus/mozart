\version "2.18.2"

\header {
  title = \markup { \fontsize #3 \sans \medium "Sonata in F Major K. 332" }
  composer = \markup { \fontsize #2 \sans \medium "W. A. Mozart" }
}

% professional-looking maybe cluttered? excellent
upper = \relative c''{

  \clef treble
  \key f \major
  \time 3/4
  \tempo \markup { \fontsize #1 \sans \medium "Allegro" } 4 = 125

  f,2-1 ( a4-3)
  c2-5 ( a4-1)
  bes2 ( g'4)
  f8 ( e ) e4 r
  f4( a, d)
  g,( c4. a8)
  f2.
  <<
  { g2.} \\
  { \override Stem.neutral-direction = #down
    f4 (  e8 d e4 )  }
  >>
}

lower = \relative c {

  \clef bass
  \key f \major
  \time 3/4

  f8-5 ([ a-3 c-1 a c a   ]
  f8-5  [c'-1 es-2 c es c ])
  f,8-5 ([ bes-2 d-1 bes d bes])
  f8-4 ([ g-2 bes-1 g bes g])
  << f4 a4 >> r r
  R2.
  f4 (a, d)
  g, (c4. a8)
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
