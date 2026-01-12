%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in F major"
  opus = "K.150"
  source = "https://s9.imslp.org/files/imglnks/usimg/a/a1/IMSLP626929-PMLP475541-Sonata_K._150_(as_L._117).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (-2 . -1) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 1) (0 . -1))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key f \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \addStaccato {
      f''8-> c' c, |
      d8-> a' a, |
      bf8-> f' f, |
      c8\noBeam a'' a |
    }
    \voiceOne bf4-> bf8-. |
    a4-> a8-. |
    \oneVoice bf,16( g' a, f' g, e' |
    a8-.) g8.(\trill f32 e |
    
    \barNumberCheck 9
    f8-.) e8.(\trill d32 c |
    d8-) \osp #'(0 . 2.5) c8.(\trill bf32 a |
    g8-.)\noBeam c8.( f16 |
    c8 bf16.-\insideSlur \prall a32 bf8-.) |
    bf8( g'8. bf,16 |
    a16 c f a f c) |
    \acciaccatura { e8 } \tuplet 3/2 { \osp #'(0 . 2.5) d16( c bf } a8 g |
    f8-.)\noBeam a'8.( c16 |
    
    \barNumberCheck 17
    g8-.) c,\( \grace { bf16( } \afterGrace 15/16 bf8) { a32 bf }
    a8-.\)\noBeam a'8.( c16 |
    g8-.) c,\( \grace { bf16( } \afterGrace 15/16 bf8) { a32 bf }
    a8-.\)\noBeam a'8.( c16 |
    g8-.) f8.(\trill e32 f |
    e8-.)\noBeam a8.( c16 |
    g8-.) f8.(\trill e32 f |
    e8-.) c'16( g e c |
    
    \barNumberCheck 25
    cs16 d a' f d b) |
    b16-\slurShapeA ( c c' g e c |
    cs16[ d]) \grace { d16( e } f8.)( d16 |
    b16[ c]) \grace { f16( g } a8.)( d,16 |
    b16[ c]) \grace { a'16( b } c8.)( d,16 |
    b16 c8 e16 g c) |
    \acciaccatura { b8 } \tuplet 3/2 { a16( g f } e8 d) |
    r8 e16( f8 d16 |
    
    \barNumberCheck 33
    b16[ c]) gs'16( a8 d,16 |
    b16[ c]) b'16( c8 d,16 |
    b16 c8 e16 g c) |
    \acciaccatura { b8 } \tupletOff \tuplet 3/2 { a16( g f } e8 d |
    c8-.)\noBeam \acciaccatura { a'8 } g8.( c,16 |
    cs16[ d]) \acciaccatura { g8 } f8.( b,16) |
    b16[( c]) \acciaccatura { a'8 } g8.( c,16 |
    cs16[ d]) \acciaccatura { g8 } \osp #'(0 . -1) f8.( b,16 |
    
    \barNumberCheck 41
    c16 e g c g e) |
    \acciaccatura { b'8 } \tuplet 3/2 { a16( g f } e8 d-.)\prall |
    \acciaccatura { b8 } \tuplet 3/2 { a16( g f } e8 d-.)\prall |
    \acciaccatura { b''8 } \tuplet 3/2 { a16( g f } e8 d-.)\prall |
    \acciaccatura { b8 } \tuplet 3/2 { a16( g f } e8 d-.)\prall |
    \appoggiatura { d16 } c4 r8 |
  }
  \repeat volta 2 {
    r8 g''-. g-. |
    \voiceOne af4-> af8-. |
    
    \barNumberCheck 49
    g4-> c8-. |
    c4-> bf!8-. |
    bf8( af g) |
    g8 f8.(\trill e32 f |
    g8-.) s4 |
    af4-> af8-. |
    g4-> c8-. |
    c4-> bf8-. |
    
    \barNumberCheck 57
    bf8( af g) |
    g8 f8.(\trill e32 f |
    g8-.)\noBeam \oneVoice c-. c,-. |
    d!8( d'-.) d,-. |
    e8( f) g-. |
    \set subdivideBeams = ##t
    \tuplet 3/2 { a16(\prall g a  bf a bf } c-.)[ bf-.] |
    \tuplet 3/2 { a16(\prall g f } c'8-.) c,-. |
    d8( d'-.) d,-. |
    
    \barNumberCheck 65
    e8( f) g,-. |
    \tuplet 3/2 { a16(\prall g a  bf a bf } c-.) bf-. |
    \tuplet 3/2 { 
      a16-\slurShapeB (\prall g f  e f g   f g a |
      g16 a bf  a bf c  d e f |
      e16 d c  e, f g  f g a |
      g16 a bf  a bf c  d e f |
      e16 d c  e f g \acciaccatura { f8 } e16 d c) |
    }
    r8 \grace { g16( a } bf8.)( g16 |
    
    \barNumberCheck 73
    e16 f) \grace { bf16( c } d8.)( g,16 |
    e16 f) \grace { d'16( e } f8.)( g,16 |
    \set subdivideBeams = ##f
    e16 f8 a16 c f) |
    \acciaccatura { e8 } \tuplet 3/2 { d16( c bf } a8 g) |
    r8 a16( bf8 g16 |
    e16[ f]) cs'( d8 g,16 |
    e16[ f]) \osp #'(-1 . 0) e'( f8 g,16 |
    e16 f8 a16 c f) |
    
    \barNumberCheck 81
    \acciaccatura { e8 } \tuplet 3/2 { \osp #'(0 . 2.5) d16( c bf } a8 g |
    f8-.)\noBeam \acciaccatura { d''8 } c8.( f,16 |
    fs16[ g]) \acciaccatura { c8 } bf8.( e,16) |
    e16[( f]) \acciaccatura { d8 } c8.( f,16 |
    fs16[ g]) \acciaccatura { c8 } bf8.( e,16 |
    f16 a c a' f c) |
    \acciaccatura { e8 } \tuplet 3/2 { d16( c bf } a8 g-.)\prall |
    \acciaccatura { e''8 } \tuplet 3/2 { d16( c bf } a8 g-.)\prall |
    
    \barNumberCheck 89
    \acciaccatura { e8 } \tuplet 3/2 { d16( c bf } a8 g-.)\prall |
    \acciaccatura { e''8 } \tuplet 3/2 { d16( c bf } a8-.) g-.\prall |
    \addStaccato { f16 c a f c a } |
    R4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*4 |
    \voiceFour a''8( g16.-\insideSlur \prall f32 g8) |
    g8( f16.-\insideSlur \prall e32 f8) |
    s4.*2 |
    
    \barNumberCheck 9
    s4.*32 |
    
    \barNumberCheck 41
    s4.*6 |
  }
  \repeat volta 2 {
    s4. |
    g8( f16.-\insideSlur \prall e32 f8) |
    
    \barNumberCheck 49
    f8( ef16.-\insideSlur \prall d32 ef8) |
    df4 df8 |
    c4 c8 |
    d4 s8 |
    c8-.\noBeam g'-. g-. |
    g8( f16.-\insideSlur \prall e32 f8) |
    f8( ef16.-\insideSlur \prall d32 ef8) |
    df4 df8 |
    
    \barNumberCheck 57
    c4 c8 |
    d4 s8 |
    c8-. s4 |
    s4.*5 |
    
    \barNumberCheck 65
    s4.*24 
    
    \barNumberCheck 89
    s4.*4 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4.*8 |
    
    \barNumberCheck 9
    s4.*6 |
    \voiceThree f'4( e8 |
    \oneVoice \hideNoteHead f8) s4 |
    
    \barNumberCheck 17
    s4.*24 |
    
    \barNumberCheck 41
    s4. |
    \voiceThree c4( b8) |
    c4( b8) |
    c4( b8) |
    s4.*2 |
  }
  \repeat volta 2 {
    s4.*2 |
    
    \barNumberCheck 49
    s4. |
    \clef treble c'8( bf!16.-\insideSlur \prall a32 bf8) |
    s4. |
    \osp #'(2.5 . 2.5) g4( bf8) |
    s4.*3 |
    c8( bf16.-\insideSlur \prall a32 bf8) |
    
    \barNumberCheck 57
    s4. |
    \osp #'(2.5 . 2.5) g4( bf8) |
    s4.*6 |
    
    \barNumberCheck 65
    s4.*16 |
    
    \barNumberCheck 81
    s4.*6 |
    \clef bass f4( e8) |
    f4( e8) |
    
    \barNumberCheck 89
    f4( e8) |
    s4.*3 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4.*7 |
    \clef treble \addStaccato {
      f'8-> c' c, |
      
      \barNumberCheck 9
      d8-> a' a, |
      \clef bass bf8-> f' f,
    }
    c-.->\noBeam <c' a'> q |
    q8 <c g'> q |
    q8 q q |
    <f, f'>4 <a f'>8-. |
    \voiceTwo bf8( c4 |
    \oneVoice <f, f'>8-.)\noBeam f16( g a bf |
    
    \barNumberCheck 17
    c16 d e f g e |
    <f, f'>8-.)\noBeam f16( g a bf |
    c16 d e f g e |
    <f, f'>8-.)\noBeam f'16( e d c |
    b a g f e d |
    c8-.)\noBeam f'16( e d c |
    b a g f e d |
    c4) <e c'>8_( |
    
    \barNumberCheck 25
    <f c'>4) <d f g b>8( |
    <e g c>4) <e c'>8( |
    f4) f'8~ |
    f4 f8~ |
    f4 f8(~ |
    f8 e c) |
    f8( g g, |
    c,4) f'8~ |
    
    \barNumberCheck 33
    f4 f8~ |
    f4 f8(~ |
    f8 e c) |
    f8( g g, |
    c,4) <e c'>8_( |
    <f d'>4) <d b'>8( |
    <e g c>4) q8( |
    f4)  <d b'>8( |
    
    \barNumberCheck 41
    <e c'>4) q8_( |
    \voiceTwo f8 g4) |
    f8( g4) |
    f8( g4) |
    \oneVoice f8( g-.) g,-. |
    <c, c'>4 r8 |
  }
  \repeat volta 2 {
    % Source has r4 r8 as the 1st measure
    R4.*2 |
    
    \barNumberCheck 49
    \clef treble r8 c'''-. c-. |
    \voiceTwo f,4-> f8 |
    \oneVoice e!_( f c |
    \voiceTwo df8) df df( |
    \oneVoice c4) r8 |
    R4. |
    r8 c'-. c-. |
    \voiceTwo f,4-> f8 |
    
    \barNumberCheck 57
    \oneVoice e!_( f c |
    \voiceTwo df8) df df( |
    \oneVoice c4) r8 |
    \clef bass  r <c, bf'>-. q-. |
    q8( <c a'>) <c g'> |
    <c f>8-. <c g'>-. <c e>-. |
    <c f>8-. c,4-> |
    r8 <c' bf'>-. q-. |
    
    \barNumberCheck 65
    q( <c a'>) <c g'>-. |
    <c f>8-. <c g'>-. <c e>-. |
    <c f>-.\noBeam c'( d |
    e8 f) bf,-. |
    c8-. c( d |
    e8 f) bf,-. |
    c4-> r8 |
    c,,4-> bf''8~ |
    
    \barNumberCheck 73
    bf4 bf8~ |
    bf4 bf8(~ |
    bf8 a f) |
    bf8( c c, |
    f,4) bf'8~ |
    bf4 bf8~ |
    bf4 bf8(~ |
    bf8 a f) |
    
    \barNumberCheck 81
    \osp #'(0 . -1.5) bf8( c c, |
    f,4) <a' c>8( |
    <bf d>4) <g bf>8( |
    <a c>4) q8( |
    <bf d>4) <g bf>8( |
    <a c>4) <a f'>8_( |
    \voiceTwo bf8 c4) |
    \osp #'(-3 . -2.5) bf8( c4) |
    
    \barNumberCheck 89
    \osp #'(-3 . -2.5) bf8( c4) |
    \oneVoice bf8( c-.) c,-. |
    f,4 r8 |
    f'4 r8 |
  }
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.*7 |
    
    \barNumberCheck 9
    s4.*2 |
    s8 s4\p |
    s4.*2 |
    s4.-\tweak Y-offset #-1 \cresc |
    s4. |
    s4.\f |
    
    \barNumberCheck 17
    s4. |
    s8 s4\p |
    s4. |
    s8 s4\f |
    s4. |
    s8 s4\p |
    s4. |
    s8 s4\f |
    
    \barNumberCheck 25
    s4.*2 |
    s8\> \grace { s8\mf } s4 |
    s4.\cresc |
    s8 \grace { s8\f } s4 |
    s4. |
    s8 s-\tweak Y-offset #1 \> s\! |
    s4.-\tweak Y-offset #0.5 \p |
    
    \barNumberCheck 33
    s4.\cresc |
    s8 s4\mf |
    s4.*2 |
    s8 \grace { s8\f } s4 |
    s4. |
    s8 \grace { s8\p } s4 |
    s4. |
    
    \barNumberCheck 41
    c4.\cresc |
    \grace { s8\f } s4. |
    \grace { s8\p } s4. |
    \grace { s8\f } s4. |
    s4.*2 |
  }
  \repeat volta 2 {
    s8 s4\f |
    s4. |
    
    \barNumberCheck 49
    s4.*4 |
    s8 s4\mf |
    s4. |
    s4\< s8\! |
    s4.-\tweak X-offset #-1 \f |
    
    \barNumberCheck 57
    s4.*2 |
    s8 s4\f |
    s4.*3 |
    s4 s8\p |
    s4. |
    
    \barNumberCheck 65
    s4. |
    s4.\cresc |
    s8\f\> s4\p-\tweak Y-offset #2 -\tweak extra-offset #'(1 . -1) \cresc |
    s4. |
    s8\f\> s4\p-\tweak Y-offset #1 -\tweak extra-offset #'(1 . 0) \cresc |
    s4. |
    s4.-\tweak Y-offset #0.5 -\tweak extra-offset #'(0 . -0.5) \f |
    s4\f\< s8\mf |
    
    \barNumberCheck 73
    s4.\cresc |
    s8 \grace { s8\f } s4 |
    s4. |
    s4\> s8\! |
    s4.\p |
    s4.\cresc |
    s8 s4\mf |
    s4. |
    
    \barNumberCheck 81
    s4. |
    s8 \grace { s8\f } s4 |
    s4. |
    s8 \grace { s8\p } s4 |
    s4. |
    s4.\cresc |
    \grace { s8\f } s4. |
    \grace { s8\p } s4. |
    
    \barNumberCheck 89
    \grace { s8\f } s4. |
    s4.*3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 72
    s4.*40 |
    
    \barNumberCheck 41
    s4.*4 |
    s8 \tempo 4. = 66 s \tempo 4. = 60 s |
    \tempo 4. = 56 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4.*2 |
    
    \barNumberCheck 49
    s4.*40 |
    
    \barNumberCheck 89
    s4.*2 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 66 s \tempo 4. = 60 s |
          \tempo 4. = 56 s4. |
        }
        {
          \tempo 4. = 63 s8 \tempo 4. = 56 s \tempo 4. = 50 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*8 \break
  s4.*8 \break
  s4.*7 \break
  s4.*7 \break
  \grace { s8 } s4.*8 \break
  s4.*8 \pageBreak
  
  % page 2
   s4.*8 \break 
   s4.*8 \break 
   s4.*7 \break 
   s4.*7 \break 
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
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
