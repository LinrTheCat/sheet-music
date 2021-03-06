\header {
  title = "B-flat Major"
  composer = "Linrz"
}
\language "english"


global = {
  \time 6/8
  \accidentalStyle Score.piano
  \key bf \major
}

right = \relative c'{
  \global
  \tempo "Adiago" 

  \slurDown
  <d d'>8-- \f\> ( f d' c bf a) || \slurNeutral
  g\p ( bf a) fs\f ( bf a) ||
  g\p ( bf a16 g) fs8\f ( bf a) ||
  g\p ( bf a16 g) a\f ( ef' d c g a) ||
  | \break
  <d, bf' d>8-- \f\> ( f f' ef d c)\! ||
  <a d,>8\p\< ( c bf) g ( ef' d) ||
  <b e,>\< ( d c) a ( f' e) ||
  <cs a g>\ff ( g' e <f a,>\> e d) ||
  |
  <d f,>\f ( f e) <cs e,>( e d) ||
  <g, d>( d' bf) <f d> c' a ||
  <ef bf>( bf' g) <c, a>
  a'16( g f ef || <d bf'>4)
  <a' ef' g>8( <bf d f>4)
  <a, ef' gf>8( || <bf d f>4)
  <ef gf>8 \repeat unfold 2 {<d f>16-. <ef gf>-.} 
  <d f>8-. \bar "||"
  \mark \markup { \musicglyph "scripts.ufermata" }

}

left = \relative c{
  \global
  \clef bass
  <bf bf'>8( f' bf a g f) ||
  <ef bf'>4. <d c'> ||
  <ef bf'>4. <d c'> ||
  <ef ef'>4. <f c' ef> ||
  ||
  <bf, bf'>8( f' d' c bf a) ||
  fs (a fs,) g( <d' bf'>4) ||
  gs8 (b gs,) a( <e' c'>4) ||
  a,8( e' cs') <d, d'>4. ||
  ||
  <d a'>4. <a a'> ||
  <bf g'> <d f> ||
  <g, ef'> <f ef'> ||
  <bf f'>4 <f f'>8
  <bf bf'>4 <ef ef,>8 ||
  <bf bf,>4 <ef ef,>8
  \repeat unfold 2 {<bf, bf'>16-. ef-.}
  <bf bf'>8-.

}

\score {
  \new PianoStaff <<
    \new Staff{\right}
    \new Staff{\left}
  >>

  \layout {}
  \midi { \tempo 4 = 80}
}