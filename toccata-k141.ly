%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Toccata in D minor"
  opus = "K.141"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/d/df/IMSLP626923-PMLP472479-Sonata_K._141_(as_L._422).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0.4) (0 . 0.4) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (2 . -1) (0 . 0) (0 . 1)) \etc
slurShapeD = \shape #'((0 . 1) (0 . 0) (0 . -0.5) (0 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0.5))
                        ((0 . 0.5) (0 . 1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -1) (0 . 1) (0 . 2) (0 . 2))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . -1) (0 . -1) (0 . -4))
                      ) \etc
slurShapeH = \shape #'((0 . -1) (1 . 2) (0 . 0) (0 . 2)) \etc
slurShapeI = \shape #'((0 . 0) (0 . -0.5) (-2 . -1) (0 . 2.25)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeK = \shape #'((-0.5 . -1.75) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 1))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (1 . 1) (0 . -1) (0 . 0))
                        ((0 . 2.25) (0 . 2.25) (0 . 2.25) (0 . 2.25))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key d \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    d''16 d d d d d |
    f16 f f f f f |
    e16 e e e e e |
    d16 d d d d d |
    e16 e e e e e |
    a16 a a a a a |
    d16( bf a g f e |
    f16 g a d, e cs |
    
    \barNumberCheck 9
    d16 bf a g f e |
    d16) d d d d d |
    f16 f f f f f |
    e16 e e e e e |
    d16 d d d d d |
    e16 e e e e e |
    a16 a a a a a |
    d16( bf a g f e |
    
    \barNumberCheck 17
    f16 g a d, e cs |
    d4.) |
    a''4.(~ |
    a16 e cs a g' e |
    a4.)-\slurShapeA (~ |
    a16 e cs a g' e |
    a4.) |
    bf16( g d bf g bf |
    
    \barNumberCheck 25
    g'4.) |
    a16( f c a f a |
    f'4.) |
    g16( e cs g e g |
    e'4.) |
    \stemDown f16( d a f d f |
    f'16 e d c bf a |
    bf'16 a g f e d |
    
    \barNumberCheck 33
    cs16[ d]) d8.(\trill cs32 d |
    e32[ f g16]) g8.(\trill f32 g |
    cs,16[ d]) d8.(\trill cs32 d |
    e32[ f g16]) g8.-\slurShapeC (\trill f32 g |
    \stemNeutral a16 e cs a e cs |
    a16) r r8 r |
    R4. |
    e'16 e e e e e |
    
    \barNumberCheck 41
    f16 f f f f f |
    gs16 gs gs gs gs gs |
    b16 b b b b b |
    d16 d d d d d |
    c( b a gs a8-.) |
    e'16 e e e e e |
    f16 f f f f f |
    gs16 gs gs gs gs gs |
    
    \barNumberCheck 49
    b16 b b b b b |
    d16 d d d d d |
    c( b a gs a8-.) |
    R4.\fermata |
    \clef bass r16 f,,-\slurShapeE ( a f c' a |
    ef'16 f, c' f, a f |
    ef' f, d' f, ef' f, |
    \voiceOne f'4.~ |
    
    \barNumberCheck 57
    f8) s4 |
    s4.*2 |
    \voiceFour f16( g, e' g, d' g, |
    cs) a-\slurShapeF ^( cs a e' a, |
    g'16 a, e' a, cs a |
    g'16 a, fs' a, g' a,
    \voiceOne a'4.) |
    
    \barNumberCheck 65
    \clef treble ds,16 \oneVoice b( fs' ds a' ds, |
    c'16 ds, b' ds, a' ds, |
    gs16) d!-\slurShapeG _( b' f d' gs, |
    \stemUp f'16 gs, e' gs, d' gs, |
    \stemNeutral cs16) g!-\slurShapeH ( e' b g' cs, |
    bf'! cs, a' cs, g' cs, |
    f16 e d c! b a |
    gs16) e( a e b' e, |
    
    \barNumberCheck 73
    gs16 e a e fs e |
    gs16 e a e b' e, |
    gs16 e a e fs e |
    gs16 e) a,( e' a, e' |
    gs,16 e' a, e' f, d' |
    e,16 e' a, e' a, e' |
    gs,16 e' a, e' f, d' |
    e,8-.)\noBeam e''16( d c b |
    
    \barNumberCheck 81
    a'16 g f e d c |
    b16-.)[ c32-\slurShapeI ( d]  c16 b a gs |
    a16 g! f e d c |
    b16-.)[ c32( d]  c16 b a gs |
    a4.) |
  }
  \repeat volta 2 {
    e''16 e e e e e |
    e16 e e e e e |
    e16 e e e e e |
    
    \barNumberCheck 89
    e16 e e e e e |
    e16 e e e e e |
    e16 e e e e e |
    f16 f f f f f |
    f16 f f f f f |
    f16 f f f f f |
    f16 f f f f f |
    ef16 ef ef ef ef ef |
    
    \barNumberCheck 97
    d16 d d d d d |
    ef16 ef ef ef ef ef |
    d16 d d d d d |
    d16 d d d d d |
    d16 d d d d d |
    d16 d d d d d |
    cs16 cs cs cs cs cs |
    d16 d d d d d |
    
    \barNumberCheck 105
    e16 e e e e e |
    f16 f f f f f |
    g16 g g g g g |
    a16 a a a a a |
    bf16( a g f e d |
    cs16 b a g f e |
    f16 a g f e d |
    \tag layout { cs4.)_\prallprall } \tag midi { cs)\prall } |
    
    \barNumberCheck 113
    a16 a a a a a |
    bf!16 bf bf bf bf bf |
    cs16 cs cs cs cs cs |
    e16 e e e e e |
    g16 g g g g g |
    f16( e d cs d8-.) |
    a'16 a a a a a |
    bf!16 bf bf bf bf bf |
    
    \barNumberCheck 121
    cs16 cs cs cs cs cs |
    e16 e e e e e |
    g16 g g g g g |
    f16( e d cs d8-.) |
    R4.\fermata |
    r16 bf,!^( d bf f' d |
    af' bf, f' bf, d bf |
    af'16 bf, g' bf, af' bf, |
    
    \barNumberCheck 129
    \voiceOne bf'4.~ |
    bf8) s4 |
    s4.*2 |
    \voiceFour bf16( c, a' c, g' c, |
    fs16) d-\slurShapeM ^( fs d a' d, |
    \oneVoice c'16 d, a' d, fs d |
    c'16 d, b' d, c' d, |
    
    \barNumberCheck 137
    \voiceOne d'4.) |
    \oneVoice gs,16 d( b' f d' gs, |
    f'16 gs, e' gs, d' gs, |
    cs16) a( e' bf! g' cs, |
    bf'16 cs, a' cs, g' cs, |
    f16 d d' c bf a |
    bf16 a g f e d |
    cs16[ d]) d8.(\trill cs32 d |
    
    \barNumberCheck 145
    e16 a, d a e' a, |
    cs16 a d a b a |
    cs16 a d a e' a, |
    cs16 a d a b a |
    cs16 a) d,( a' d, a' |
    cs,16 a' d, a' bf, g' |
    a,16 a' d, a' d, a' |
    cs,16 a' d, a' bf, g' |
    
    \barNumberCheck 153
    cs,16 a' d, a' bf, g' |
    a,8)\noBeam a''16( g f e |
    d'16 c bf a g f |
    e16-.)[ f32( g]  f16 e d cs |
    d16 c! bf a g f |
    e16-.)[ f32( g]  f16 e d cs |
    d16\noBeam \clef bass c! bf a g f |
    e16-.)[ f32( g]  f16 e d cs |
    
    \barNumberCheck 161
    d4.) \clef treble  |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*48 |
    
    \barNumberCheck 49
    s4.*7 |
    \clef bass \voiceFour ef'16( f, d' f, c' f, |
    
    \barNumberCheck 57
    b16) \osp #'(0 . 0.5) g^( b g d' g, |
    f'16 g, d' g, b g |
    f'16 g, e'! g, f' g, |
    \voiceOne g'4.~ |
    g8) s4 |
    s4.*2 |
    \voiceFour g16( a, fs' a, e' a, |
    
    \barNumberCheck 65
    \clef treble \oneVoice \hideNoteHead ds16) s16 s4 |
    s4.*7 |
    
    \barNumberCheck 73
    s4.*8 |
    
    \barNumberCheck 81
    s4.*5
  }
  \repeat volta 2 {
    s4.*3 |
    
    \barNumberCheck 89
    s4.*40 |
    
    \barNumberCheck 129
    \voiceFour af'16( bf, g' bf, f' bf, |
    e16) c-\slurShapeL ^( e c g' c, |
    \oneVoice bf'16 c, g' c, e c |
    bf' c, a' c, bf' c, |
    \voiceOne c'4.~ |
    c8) s4 |
    s4.*2 |
    
    \barNumberCheck 137
    \voiceFour c16( d, b' d, a' d, |
    \hideNoteHead gs16) s s4 |
    s4.*6 |
    
    \barNumberCheck 145
    s4.*16 |
    
    \barNumberCheck 161
    s4. |
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
    s4.*24 |
    
    \barNumberCheck 25
    s4.*6 |
    \voiceThree d'4. |
    g4. |
    
    \barNumberCheck 33
    g4. |
    g4. |
    g4. |
    g4. |
    s4.*4 |
    
    \barNumberCheck 41
    d,8( d') c!-. |
    r8 d4~ |
    d8 e4~ |
    e4. |
    s4.*2 |
    \clef treble d8( d') c!-. |
    r8 d4~ |
    
    \barNumberCheck 49
    d8 e4~ |
    e4. |
    s4.*6 |
    
    \barNumberCheck 57
    s4.*24 |
    
    \barNumberCheck 81
    s4.*5 |
  }
  \repeat volta 2 {
    s4.*3 |
    
    \barNumberCheck 89
    s4.*24 |
    
    \barNumberCheck 113
    s4. |
    \clef bass a,,,8( g') f-. |
    e8 g4~ |
    g8 a4~ |
    a4. |
    s4.*2 |
    a8( g') f-. |
    
    \barNumberCheck 121
    e8 g4~ |
    g8 a4~ |
    a4. |
    s4.*2 |
    bf,,!4. |
    bf4. |
    bf4. |
    
    \barNumberCheck 129
    s4. |
    c4. |
    c4. |
    c4. |
    s4. |
    d4. |
    d4. |
    d4. |
    
    \barNumberCheck 137
    s4.*24 |
    
    \barNumberCheck 161
    s4. |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \addStaccato {
      <d f a d>8\arpeggio r r |
      <d f a d>8\arpeggio r r |
      <a' cs e a>8\arpeggio r r |
      <bf cs d g>8\arpeggio r r |
      <a cs e a>8\arpeggio r r |
      <f a d>8\arpeggio r r |
      <g bf d>8\arpeggio r r |
    }
    <a d f>4 <a e' g>8-. |
    
    \barNumberCheck 9
    d,4. |
    \addStaccato {
      <d, f a d>8\arpeggio r r |
      <d f a d>8\arpeggio r r |
      <a' cs e a>8\arpeggio r r |
      <bf d g>8\arpeggio r r |
      <a cs e a>8\arpeggio r r |
      <f a d>8\arpeggio r r |
      <g bf d g>8\arpeggio r r |
    }
    
    \barNumberCheck 17
    <a d f>4 <a e' g>8-. |
    <d, d'>4. |
    \osp #'(0 . 2.5) a'''16( f d a f d |
    a4.) |
    \osp #'(0 . 2.5) a''16( f d a f d |
    a4.) |
    \osp #'(0 . 2.5) a''16( f d a f d |
    g,4.) |
    
    \barNumberCheck 25
    \osp #'(0 . 2.5) g''16( e c g e c |
    f,4.) |
    f''16-\slurShapeB ( d bf f d bf |
    e,4.) |
    \osp #'(0 . 2.5) e''16( cs a e cs a |
    d,4.) |
    \voiceTwo d'8( e) f-. |
    g8( a) bf-. |
    
    \barNumberCheck 33
    a8( bf4) |
    a8( bf4) |
    a8( bf4) |
    a8( bf4) |
    \oneVoice a8-. r r |
    r16 e-\slurShapeD ( cs a e cs |
    a4.) |
    a''8( b cs) |
    
    \barNumberCheck 41
    \voiceTwo d,4. |
    \osp #'(-1 . 0) b'4( a8 |
    gs4 fs8 |
    e8 fs) gs-. |
    \oneVoice a,4. |
    a'8( b cs) |
    \clef treble \voiceTwo d4. |
    \osp #'(-1.5 . 0) b'4( a8 |
    
    \barNumberCheck 49
    gs4 fs8 |
    e8 fs) gs-. |
    \oneVoice a,4. |
    R4.\fermata |
    \clef bass f,8 f f |
    f8 f f |
    f8 f f |
    af8 af af |
    
    \barNumberCheck 57
    g8 g g |
    g8 g g |
    g8 g g |
    bf8 bf bf |
    a8 a a |
    a8 a a |
    a8 a a |
    c8 c c |
    
    \barNumberCheck 65
    b8 b b |
    <b a'>8 q q |
    e8 <e d'> q |
    q8 q q |
    a8 <a g'> q |
    q8 q q |
    \osp #'(0 . -1) <d f>8( e f |
    e,8)-.\noBeam \clef treble c''( d |
    
    \barNumberCheck 73
    e8)\noBeam \clef bass <c,,, c'>-. <d d'>-. |
    <e e'>8-.\noBeam \clef treble c'''( d |
    e8)\noBeam \clef bass <c,,, c'>-. <d d'>-. |
    <e e'>8-.\noBeam \clef treble c'''( d |
    e8)\noBeam \clef bass a,,,-.( f-. |
    e8-.)\noBeam \clef treble c'''( d |
    e8)\noBeam \clef bass a,,,-.( f-. |
    e8-.)\noBeam e''-\slurShapeJ ( gs, |
    
    \barNumberCheck 81
    a8 b c |
    d8 e e, |
    a,8)( b c |
    d8 e e, |
    a4.) \clefAfterBarLine \clef treble  |
  }
  \repeat volta 2 {
    \addStaccato {
      <a'' cs>8 q q |
      <g bf! d>8 q q |
      <a cs>8 q q |
      
      \barNumberCheck 89
      <g bf d>8 q q |
      <g bf c!>8 q q |
      <g bf c!>8 q q |
      <f af c>8 q q |
      <f g b d>8 q q |
      <af c d>8 q q |
      <g b d>8 q q |
      <g c>8 q q |
      
      \barNumberCheck 97
      <fs c'>8 q q |
      <g c>8 q q |
      <fs c'>8 q q |
    }
    <f! c'>8( <f b>-.) <f a>-. |
    \addStaccato {
      <e gs b>8 q q |
      <f a>8 q q |
      <e g a>8 q q |
      <d g bf!>8 q q |
      
      \barNumberCheck 105
      <cs g' a>8 q q |
      <d f a>8 q q |
      <bf e g>8 q q |
      \clef bass <f a d>8 q q |
    }
    <g d'>8( a bf |
    a8 b cs |
    d8-.) bf!-. g-. |
    a,4. |
    
    \barNumberCheck 113
    r4 a8-. |
    \voiceTwo a4. |
    e'4( d8 |
    cs4 bf8 |
    a8 b) cs-. |
    \oneVoice d4. |
    r4 a'8-. |
    \voiceTwo a4. |
    
    \barNumberCheck 121
    e'4-\slurShapeK ( d8 |
    cs4 bf8 |
    a8 b) cs-. |
    \oneVoice d,4. |
    R4.\fermata |
    \voiceTwo bf,!8 bf bf |
    bf8 bf bf |
    bf8 bf bf |
    
    \barNumberCheck 129
    \oneVoice df8 df df |
    \voiceTwo c8 c c |
    c8 c c |
    c8 c c |
    \oneVoice ef8 ef ef |
    \voiceTwo d8 d d|
    d8 d d |
    d8 d d |
    
    \barNumberCheck 137
    \oneVoice f8 f f |
    e8 e e |
    <e' b' d>8 q q |
    <a e' g!>8 q q |
    q8 q q |
    <d f>8( <e g> <f a>) |
    <g, g'>8( <a g'>) <bf g'>-. |
    a8( bf) bf( |
    
    \barNumberCheck 145
    a8)\noBeam \clef treble f''( g |
    a8)\noBeam \clef bass <f,,, f'>-. <g g'>-. |
    <a a'>8-.\noBeam \clef treble f'''( g |
    a8)\noBeam \clef bass <f,,, f'>-. <g g'>-. |
    <a a'>8-.\noBeam \clef treble f'''( g |
    a8)\noBeam \clef bass d,,,-.( bf-. |
    a8-.)\noBeam \clef treble f'''( g |
    a8)\noBeam \clef bass d,,,-.( bf-. |
    
    \barNumberCheck 153
    a8-.)\noBeam d,( bf |
    a8-.)\noBeam a'''( a, |
    d8 e f |
    g8 a a, |
    d,8) e( f |
    g8 a a, |
    d,8)( e f |
    g8 a) a,-. |
    
    \barNumberCheck 161
    d4. \clef treble |
  }
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
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
    s4. |
    \tag layout { s4.\fp } \tag midi { s16\f s\p s4 } |
    s4.*6 |
    
    \barNumberCheck 17
    s4.*2 |
    s4.\p |
    s4.*4 |
    s4\mf\> s16 s\! |
    
    \barNumberCheck 25
    s4.-\tweak Y-offset #1 \p |
    s4.*5 |
    s4-\tweak Y-offset #-1 \mf-\tweak Y-offset #-1 \> s16 s\! |
    s4\mf\> s16 s\! |
    
    \barNumberCheck 33
    s8\p s4-\tweak Y-offset #-1 \cresc |
    s4.*3 |
    s4.\f |
    s4.*2 |
    s4.\p |
    
    \barNumberCheck 41
    s4. |
    s4.-\tweak Y-offset #1 \cresc |
    s4.*2 |
    s4.\f |
    s4.\p |
    s4. |
    s4.\cresc |
    
    \barNumberCheck 49
    s4.*2 |
    s4.\f |
    s4. |
    s4.\p |
    s4.*2 |
    s4-\tweak Y-offset #-1 \mf-\tweak Y-offset #-1 \> s16 s\! |
    
    \barNumberCheck 57
    s4.\p |
    s4.*2 |
    s4-\tweak Y-offset #-1 \mf-\tweak Y-offset #-1 \> s16 s\! |
    s4.\p |
    s4.*2 |
    s4\mf\> s16 s\! |
    
    \barNumberCheck 65
    s8\p s4-\tweak Y-offset #-1 \cresc |
    s4.*4 |
    s4.\f |
    s4. |
    s16 s\p s4 |
    
    \barNumberCheck 73
    s4.*3 |
    s8 s4\mf |
    s4.*4 |
    
    \barNumberCheck 81
    s4. |
    s4.\cresc |
    s4.*2 |
    s4.-\tweak Y-offset #-3 \f |
  }
  \repeat volta 2 {
    s4.\p |
    s4\mf\> s16 s\! |
    s4.\p |
    
    \barNumberCheck 89
    s4\mf\> s16 s\! |
    s4.\p\cresc |
    s4. |
    s4\mf\> s16 s\! |
    s4.\p |
    s4\mf\> s16 s\! |
    s4.\p |
    s4. |
    
    \barNumberCheck 97
    s4. |
    s4\mf\> s16 s\! |
    s4.\p |
    s8.\> s16\! s8\p |
    s4. |
    s4\mf\> s16 s\! |
    s4.\p |
    s4.\cresc |
    
    \barNumberCheck 105
    s4.*4 |
    s4.-\tweak Y-offset #1 \f |
    s4.*3 |
    
    \barNumberCheck 113
    s4.-\tweak Y-offset #-1 \p |
    s4. |
    s4.\cresc |
    s4.*2 |
    s4.-\tweak Y-offset #-3 \f |
    s4.-\tweak Y-offset #-3 \p |
    s4. |
    
    \barNumberCheck 121
    s4.-\tweak extra-offset #'(0 . -1) \cresc |
    s4.*2 |
    s4.-\tweak Y-offset #2 \f |
    s4. |
    s4.-\tweak Y-offset #2 \p |
    s4.*2 |
    
    \barNumberCheck 129
    s4\mf\> s16 s\! |
    s4.\p |
    s4.*2 |
    s4\mf\> s16 s\! |
    s4.\p |
    s4.*2 |
    
    \barNumberCheck 137
    s4\f\> s16 s\! |
    s4.\p |
    s4.-\tweak Y-offset #1.5 \cresc |
    s4.*2 |
    s8 s4-\tweak Y-offset #3.5 \f |
    s4.*2 |
    
    \barNumberCheck 145
    s16 s\p s4 |
    s4.*3 |
    s8 s4\mf |
    s4.*3 |
    
    \barNumberCheck 153
    s4.*5 |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 161
    s4.\f |
  }
}

pedal = {
  \repeat volta 2 {
    s4.*16 |
    
    \barNumberCheck 17
    s4.*2 |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    
    \barNumberCheck 25
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.*2 |
    
    \barNumberCheck 33
    s4.*4 |
    s4.\sd |
    s4. |
    s8 s4\su |
    s4. |
    
    \barNumberCheck 41
    s4.*8 |
    
    \barNumberCheck 49
    s4.*7 |
    s4.\sd |
    
    \barNumberCheck 57
    s4.\su |
    s4.*2 |
    s4.\sd |
    s4.\su |
    s4.*2 |
    s4.\sd |
    
    \barNumberCheck 65
    \tag layout { s4.\sd } \tag midi { s\sud } |
    \tag layout { s4.\sd } \tag midi { s\sud } |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4. |
    
    \barNumberCheck 73
    s4.*8 |
    
    \barNumberCheck 81
    s4.*5 |
  }
  \repeat volta 2 {
    s4. |
    s4.\sd |
    s4.\su |
    
    \barNumberCheck 89
    s4.\sd |
    s4.\su |
    s4.*3 |
    s4.\sd |
    s4.\su |
    s4. |
    
    \barNumberCheck 97
    s4.*32 |
    
    \barNumberCheck 129
    s4.\sd |
    s4.\su |
    s4.*2 |
    s4.\sd |
    s4.\su |
    s4.*2 |
    
    \barNumberCheck 137
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.*2 |
    
    \barNumberCheck 145
    s4.*16 |
    
    \barNumberCheck 161
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Presto" 4. = 80
    s4.*48 |
    
    \barNumberCheck 49
    s4.*3 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 69 
    s4. |
    \tempo 4. = 80
    s4.*4 |
    
    \barNumberCheck 57
    s4.*24 |
    
    \barNumberCheck 81
    s4.*3 |
    s8 \tempo 4. = 72 s \tempo 4. = 66 s |
    \tempo 4. = 60 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 80
    s4.*3 |
    
    \barNumberCheck 89
    s4.*32 |
    
    \barNumberCheck 121
    s4.*4 |
    \tempo 4. = 69 
    s4. |
    \tempo 4. = 80
    s4.*3 |
    
    \barNumberCheck 129
    s4.*24 |
    
    \barNumberCheck 153
    s4.*7 |
    \tag layout {
      s4. |
      
      \barNumberCheck 161
      s4. |
    }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 72 s \tempo 4. = 66 s |
          
          \barNumberCheck 161
          \tempo 4. = 60 s4. |
        }
        {
          \tempo 4. = 69 s8 \tempo 4. = 60 s \tempo 4. = 54 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*6 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*6 \break
  s4.*7 \break
  s4.*7 \break
  s4.*6 \pageBreak
  
  % page 3
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \pageBreak
  
  % page 4
  s4.*6 \break
  s4.*6 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 5
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
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
