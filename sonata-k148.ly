%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in A minor"
  opus = "K.148"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/c/cb/IMSLP626927-PMLP474021-Sonata_K._148_(as_L._64).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.5) (0 . 1.5) (0 . -1.75)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((-0.25 . 0.15) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -1) (0 . 0.5) (0 . 0) (0 . -1)) \etc

%
% Music
%

global = {
  \time 3/8
  \key a \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    e''4. |
    f8( d b |
    e8 c a |
    b8. c32 d c8) |
    r4 e8-.
    b8.( c32 d c8) |
    r4 e8-.
    b8.( c32 d c8) |
    
    \barNumberCheck 9
    r8^\aTempo a'( f) |
    r8 g( e) |
    r8 f( d) |
    r8 e( f |
    g8 e) c-. |
    d8.( e32 f e8) |
    r4 g8-. |
    d8.( e32 f e8) |
    
    \barNumberCheck 17
    r8 c'( e,) |
    \tag layout { fs4.\prallprall } \tag midi { fs\prall } |
    \tag layout { g4.\prallprall } \tag midi { g\prall } |
    \tag layout { <g a>4.\prallprall ^\trillFlat } \tag midi { q\prall } |
    \tag layout { <f a>4.\prallprall ^\trillFlat } \tag midi { q\prall } |
    \tag layout { <e gs>4.\prallprall } \tag midi { q\prall } |
    \tag layout { <c e a>4.\prallprall } \tag midi { q\prall } |
    \tag layout { <b fs' a>4.(\prallprall } \tag midi { q(\prall } |
    
    \barNumberCheck 25
    g'!8) a( b |
    fs8 g a |
    ds,8) e16( fs g a) |
    \appoggiatura { a8 } b4. |
    r4 b8-. |
    fs8.( g32 a g8) |
    r4 b8-. |
    fs8.( g32 a g8~ |
    
    \barNumberCheck 33
    g8) fs( e |
    c'8 ds, e) |
    \tuplet 3/2 { a16( g fs } <e g>8-. <ds fs>-.) |
    e4. |
    r4 b8-. |
    fs8.( g32 a g8) |
    r4 b8-. |
    fs8.( g32 a g8~ |
    
    \barNumberCheck 41
    g8) fs( e |
    c' ds, e) |
    \tupletOff \tuplet 3/2 { a16( g fs } <e g>8-. <ds fs>-.) |
    <<
      { 
        e8( e') f!-\slurShapeA (~ | 
        f8 e d) | 
      }
      \\
      { 
        e,4 a8( | 
        gs4.) | 
      }
    >> 
    \appoggiatura { d'16 } c4(\prall b8) |
    \tuplet 3/2 { a16( g fs } <e g>8-. <ds fs>-.) |
    <<
      { 
        e8( e') f!(~ |
        
        \barNumberCheck 49
        f8 e d) | 
      }
      \\
      { 
        e,4 a8( | 
        
        \barNumberCheck 49
        gs4.) | 
      }
    >> 
    \appoggiatura { d'16 } c4(\prall b8) |
    \tuplet 3/2 { a16 g fs } <e g>8-. <ds fs>-. |
    e4 r8 |
  }
  \repeat volta 2 {
    e'4. |
    e4. |
    e4.-\slurShapeC (~ |
    e8 a g |
    
    \barNumberCheck 57
    \tag layout { f!8-\insideSlur \prallprall } \tag midi { f\prall } e d) |
    d4. |
    d4. |
    d4.(~ |
    d8 g f |
    \tag layout { e8-\insideSlur \prallprall } \tag midi { e\prall } d c) |
    g'8( e cs) |
    \appoggiatura { cs16 } d4. |
    
    \barNumberCheck 65
    r8 a'( c,!) |
    r8 g'( b,) |
    r8 e( g,~ |
    g8 fs16-\insideSlur \prall e d8-.) |
    r4 d'8-. |
    a8.( b32 c b8) |
    r4 d8-. |
    a8.( b32 c b8) |
    
    \barNumberCheck 73
    <b b'>4.( |
    <c c'>4. |
    <cs cs'>4. |
    <d d'>4.) |
    <ds a'>4.( |
    <d! b'>4. |
    \override Parentheses.font-size = #-2
    <\parenthesize c c'>8) b'-\slurShapeD ( a~ |
    a8 gs16\prall fs e8-.) |
    
    \barNumberCheck 81
    r4 e8-. |
    b8.( c32 d c8) |
    r4 e8-. |
    b8.( c32 d c8~ |
    c8) b( a |
    f'8 gs, a) |
    \tupletOn \tuplet 3/2 { d16( c b } <a c>8-. <gs b>-. |
    a4.) |
    
    \barNumberCheck 89
    r4 e'8-. |
    b8.( c32 d c8) |
    r4 e8-. |
    b8.( c32 d c8~ |
    c8) b( a |
    f'8 gs, a) |
    \tupletOff \tuplet 3/2 { d16( c b } <a c>8-. <gs b>-.) |
    <<
      { 
        a8( a') bf(~ |
        
        \barNumberCheck 97
        bf8 a g) |
      }
      \\
      { 
        a,4 d8( |
        
        \barNumberCheck 97
        cs4.) |
      }
    >> 
    \appoggiatura { g'16 } f4(\prall e8) |
    \tuplet 3/2 { d16( c b } <a c>8-. <gs b>-.) |
    <<
      { 
        a8( a') bf(~ |
        bf8 a g) |
      }
      \\
      { 
        a,4 d8( |
        cs4.) |
      }
    >> 
    \appoggiatura { g'16 } f4(\prall e8) |
    \tuplet 3/2 { d16( c b } <a c>8-. <gs b>-. |
    a4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    a8( b c |
    d4) d8( |
    c4) c8( |
    gs8 e a) |
    \tag layout { c8(\prallprall } \tag midi { c(\prall } b a |
    gs8 e a) |
    \tag layout { c8(\prallprall } \tag midi { c(\prall } b a |
    gs8 e a) |
    
    \barNumberCheck 9
    f4( d'8 |
    e,4 c'8 |
    d,4 b'8 |
    c,8) c'( d |
    e4) e8( |
    b8 g c) |
    \tag layout { e8(\prallprall } \tag midi { e(\prall } d c |
    b8 g c) |
    
    \barNumberCheck 17
    <c, c'>8 q q |
    <d c'>8 q q |
    <d b'>8 q q |
    <d cs'>8 q q |
    <d d'>8 q q |
    <e d'>8 q q |
    <e c'>8 q q |
    <e ds'>8 q q( |
    
    \barNumberCheck 25
    <e e'>8) fs( g |
    a4 b8 |
    c4) c8( |
    b4) a'8( |
    \tag layout { g8\prallprall } \tag midi { g\prall } fs e |
    ds8 b e) |
    \tag layout { g8(\prallprall } \tag midi { g(\prall } fs e |
    ds8 b e) |
    
    \barNumberCheck 33
    as,4.( |
    a!4 g8) |
    a8( b-. b,-.) |
    r8 e( a |
    \tag layout { g8\prallprall } \tag midi { g\prall } fs e |
    % Third beat, e according to an urtext
    ds8 b e) |
    \tag layout { g8(\prallprall } \tag midi { g(\prall } fs e |
    ds8 b e) |
    
    \barNumberCheck 41
    as,4.( |
    a!4 g8) |
    a8-. b4( |
    c4 d8 |
    e4.) |
    a,8( a' g |
    a b-. b,-.) |
    \osp #'(2 . 0) c4( d8 |
    
    \barNumberCheck 49
    e4.) |
    a,8-\slurShapeB ( a' g |
    a b-. b,-. |
    e4) r8 |
  }
  \repeat volta 2 {
    r8 \osp #'(0 . -1) e'( d! |
    cs8 e bf |
    a8 e' g, |
    <f a>4) <e cs'>8( |
    
    \barNumberCheck 57
    <d d'>4.) |
    r8 \osp #'(0 . -1) d'( c! |
    b!8 d a |
    g d' f, |
    <e g>4) <d b'>8( |
    <c c'>4.) |
    e4 e8 |
    r8 d( e |
    
    \barNumberCheck 65
    fs4) fs8( |
    g4) \osp #'(0 . 2.5) g8( |
    c,4) c8_( |
    d4) r8 |
    \tag layout { b'8(\prallprall } \tag midi { b\prall } a g |
    fs8 d g) |
    \tag layout { b8(\prallprall } \tag midi { b\prall } a g |
    fs8 d g) |
    
    \barNumberCheck 73
    \addStaccato {
      <g f'!>8( q q) |
      <g e'>8( q q) |
      <a g'>8( q q) |
      <a fs'>8( q q) |
      <b g'>8( q q) |
      q8( q)
    } q( |
    <a a'>) <g g'>( <f! f'!> |
    <e e'>4.) |
    
    \barNumberCheck 81
    \tag layout { c'8(\prallprall } \tag midi { c(\prall } b a |
    gs8 e a) |
    \tag layout { c8(\prallprall } \tag midi { c(\prall } b a |
    gs8 e a) |
    ds,4.( |
    d!4 c8) |
    d8( e-. e,-. |
    a8) a'-\slurShapeE ( b |
    
    \barNumberCheck 89
    \tag layout { c8-\insideSlur \prallprall } \tag midi { c\prall } b a |
    gs8 e a8) |
    \tag layout { c8(-\insideSlur \prallprall } \tag midi { c(\prall } b a |
    gs8 e a8) |
    \osp #'(0 . 2.5) ds,4.( |
    d!4 c8) |
    d8( e-. e,-.) |
    f'4( g8 |
    
    \barNumberCheck 97
    a4.) |
    d,8( d' c |
    d8 e-. e,-.) |
    f4( g8 |
    a4 a,8) |
    d,8( d' c |
    d8 e-. e,-. |
    a4.) |
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\mf |
    s4.*3 |
    s4.-\tweak Y-offset #1 \p |
    s4.*2 |
    s4.^\pocoRit |
    
    \barNumberCheck 9
    s8\mf s\> s\! |
    s8 s\> s\! |
    s8 s\> s\! |
    s4.*3 |
    s4.-\tweak Y-offset #1 \p |
    s4. |
    
    \barNumberCheck 17
    s4. |
    s4.\mf |
    s4.\p |
    s4.\mf |
    s4.\p |
    s4.\cresc |
    s4. |
    s4\f s8\> |
    
    \barNumberCheck 25
    s8 s4\mf |
    s4.*2 |
    \grace { s8\> } s4.\! |
    s4.*2 |
    s4.-\tweak Y-offset #1 \p |
    s4. |
    
    \barNumberCheck 33
    s4.\f |
    s4.*2 |
    s4.\mf |
    s4.*2 |
    s4.\p |
    s4. |
    
    \barNumberCheck 41
    s4.\f |
    s4.*6 |
    s4\> s8\p |
    
    \barNumberCheck 49
    s4.*2 |
    s4.-\tweak Y-offset #1 \mf |
    s4. |
  }
  \repeat volta 2 {
    s4.\p |
    s4.-\tweak Y-offset #1 \cresc |
    s4. |
    s4.\f |
    
    \barNumberCheck 57
    s8 s\> s\! |
    s4.\p |
    s4.-\tweak Y-offset #0.5 \cresc |
    s4. |
    s4.\f |
    s8 s\> s\! |
    s4.\p |
    s4\< s8\! |
    
    \barNumberCheck 65
    s4\> s8\! |
    s4.\p |
    s4 s8\> |
    s4 s8\! |
    s4.-\tweak Y-offset #0.5 \mf |
    s4. |
    s4.-\tweak Y-offset #-1 \p |
    s4. |
    
    \barNumberCheck 73
    s4.\p\cresc |
    s4.*2 |
    s4.\mf |
    s4. |
    s4.\cresc |
    s4.\mf |
    s8 s\> s\! |
    
    \barNumberCheck 81
    s4.-\tweak Y-offset #1 \mf |
    s4. |
    s4.-\tweak Y-offset #1 \p |
    s4. |
    s4.\f |
    s4.*2 |
    s8 s\p\< s\! |
    
    \barNumberCheck 89
    s4.\mf |
    s4. |
    s4.\p |
    s4. |
    s4.-\tweak Y-offset #-2 \f |
    s4.*3 |
    
    \barNumberCheck 97
    s4.*3 |
    s4 s8\p |
    s4. |
    \grace { s16\< } s4 s8\! |
    s4.-\tweak Y-offset #-2 \f |
    s4. |
  }
}

pedal = {
  \repeat volta 2 {
    s4.*16 |
    
    \barNumberCheck 17
    s4. |
    s8 s4\sd |
    s8\su s4\sd |
    s8\su s4\sd |
    s8\su s4\sd |
    s8\su s4\sd |
    s8\su s4\sd |
    s8\su s4\sd |
    
    \barNumberCheck 25
    s4.\su |
    s4.*7 |
    
    \barNumberCheck 33
    s4.*16
    
    \barNumberCheck 49
    s4.*4 |
  }
  \repeat volta 2 {
    s4.*4 |
    
    \barNumberCheck 57
    s4.*16 |
    
    \barNumberCheck 73
    s4.\sd |
    \tag layout { s4.\sd } \tag midi { s\sud } |
    \tag layout { s4.\sd } \tag midi { s\sud } |
    \tag layout { s4.\sd } \tag midi { s\sud } |
    \tag layout { s4.\sd } \tag midi { s\sud } |
    \tag layout { s4.\sd } \tag midi { s\sud } |
    s4.\su |
    s4. |
    
    \barNumberCheck 81
    s4.*24 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Andante" 4. = 54
    s4.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 50 s8 \tempo 4. = 46 s \tempo 4. = 42 s |
    
    \barNumberCheck 9
    \tempo 4. = 54
    s4.*40 |
    
    \barNumberCheck 49
    s4.*2 |
    \tempo 4. = 50 s8 \tempo 4. = 46 s \tempo 4. = 42 s |
    \tempo 4. = 38 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 54
    s4.*4 |
    
    \barNumberCheck 57
    s4.*40 |
    
    \barNumberCheck 97
    s4.*6 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 50 s8 \tempo 4. = 46 s \tempo 4. = 42 s |
          \tempo 4. = 38 s4. |
        }
        {
          \tempo 4. = 49 s8 \tempo 4. = 44 s \tempo 4. = 39 s |
          \tempo 4. = 34 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*8 \break
  s4.*9 \break
  s4.*9 \break
  s4.*9 \break
  s4.*9 \break
  s4.*8 \pageBreak
  
  % page 2
  s4.*9 \break
  s4.*9 \break
  s4.*9 \break
  s4.*8 \break
  s4.*8 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
