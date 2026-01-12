%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title = "Sonata in E minor"
  opus = "K.147"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/1/10/IMSLP626926-PMLP473831-Sonata_K._147_(as_L._376).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeB = \shape #'((0 . 2.5) (-2 . -9) (0 . -8) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 2.5) (0 . 0) (0 . 0) (0 . 0.5)) \etc
slurShapeD = \shape #'(
                        ((0 . 2.2) (0.8 . 3.2) (2.2 . 3.2) (3 . 2.2))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeE = \shape #'((-0.25 . -1) (-0.25 . -1) (0 . -1) (0 . -1)) \etc
slurShapeF = \shape #'(
                        ((-1 . -2) (-0.2 . -3) (2.2 . -3) (3 . -2))
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeG = \shape #'((0 . -1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeH = \shape #'((-1 . -1) (-1 . -1) (0 . -1) (0 . -1)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0.25) (0.5 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0 . 0) (2 . 0.5) (-0.5 . 0.5) (-0.5 . -0.5)) \etc
slurShapeK = \shape #'((0.5 . 0.8) (0.5 . 0.8) (0.6 . 0.6) (0.5 . 0.4)) \etc
slurShapeL = \shape #'((0.5 . 0.8) (0.5 . 0.8) (0.6 . 0.6) (0.5 . 0.4)) \etc
slurShapeM = \shape #'((0.5 . 0.8) (0.5 . 0.8) (0.6 . 0.6) (0.5 . 0.4)) \etc
slurShapeN = \shape #'((0.5 . 0.6) (0.5 . 0.6) (0.6 . 0.6) (0.5 . 0.4)) \etc
slurShapeO = \shape #'((0.5 . 0.6) (0.5 . 0.6) (0.6 . 0.6) (0.5 . 0.4)) \etc
slurShapeP = \shape #'((-0.2 . 2.5) (-0.2 . -1) (0 . 0) (0 . 0)) \etc
slurShapeQ = \shape #'(
                        ((0 . -2) (0 . -2) (0 . -2) (0 . -2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0.25 . 2) (0.25 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeS = \shape #'(
                        ((0 . -0.5) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeT = \shape #'(
                        ((0 . -1) (-2 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeU = \shape #'(
                        ((0 . -0.5) (-1 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeV = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 2.5) (0.5 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeW = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 2.5) (0.25 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeX = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeY = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeZ = \shape #'((0 . -0.5) (-2 . 1) (0 . 0) (0 . 0)) \etc
slurShapeAA = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc

rotateHairpinA = \once \override Hairpin.rotation = #'(15 -1 0)

%
% Music
%

global = {
  \time 4/4
  \key e \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \voiceOne b''8( c b ds,  e fs g4~ |
    g4) \osp #'(0 . -2) fs8( a g2~ |
    g4) \osp #'(0 . -0.5) fs8( a  g4.) \osp #'(2.5 . 2.5) a8( |
    fs4.) \osp #'(2.5 . 2.5) ds8( e4.) cs8-\slurShapeD ( |
    d!4.) \osp #'(2 . 2) b8( c!4.) \osp #'(3 . 2.5) a8( |
    b4.) gs8( a4.) \osp #'(-0.5 . 0) fs8(
    g8 a b2 a4 |
    \oneVoice <ds, fs b>4.) <fs a>8  q( <e g>4) q8 |
    
    \barNumberCheck 9
    \osp #'(0.5 . 0) q8( <ds fs>4) <fs a>8  q( <e g>4) <f a>8 |
    \voiceOne \osp #'(3 . 3) a8( gs4) b8  b-\slurShapeN ( a4) c8 |
    c8-\slurShapeO ( b4) \oneVoice <b d>8  q( <a c>) q[( <g b>]) |
    q8( <e a>) q[( <g e'>]) \stemUp q( <fs d'>) <g d'>[( <e cs'>]) |
    \voiceOne d'8( c!) r \osp #'(2 . 2.5) a'4->(  g8) g[( fs]) |
    g( fs) fs[( e])  e( d) d[( c]) |
    \osp #'(0.5 . 0) c4.( b8 a4) \oneVoice r8 <c a'> |
    q8( <b g'>) q( <a fs'>)  q( <b g'>4) <b d>8 |
    
    \barNumberCheck 17
    <b d>8( <a c> <g b> <fs a>)  q( <g b>4) <d' b'>8 |
    q8( <c a'>) q( <b gs'>)  q( <c a'>4) <c e>8 |
    q8( <b d> <a c> <gs b>) \stemDown q( <a c>4) <c e>8 |
    q8( <b d>) q8( <a c>)  q8( \stemNeutral <g! b>4) <b d>8 |
    q8( <a c>) q( <g b>)  q( <fs a>4) <a c>8 |
    q8( <g b>) q( <fs a>  <e g>4) r8 <g' b> |
    q8( <fs a> <e g> <ds fs>)  q( <e g>4) <g b>8 |
    q8( <fs a> <e g> <ds fs>)  q( <e g>4) <d b'>8 |
    
    \barNumberCheck 25
    q8( <c a'>) q( <b g'>)  q8( <a fs'>4) <fs' a>8 |
    q8( <e g> <d fs> <cs e>)  q( <d fs>4) <c a'>8 |
    q8( <b g'>) q( <a fs'>)  q( <g e'>4) <b g'>8 |
    q8( <a fs'>) q( <g e'>)  <fs ds'>4 r |
    fs'16( a, e' g,  \stemDown ds' fs, cs' e,  <fs ds'>4) r |
    fs'16( a, e' g,  ds' fs, cs' e,  <fs ds'>4) r |
    b'16( ds, a' cs,  g' b, fs' a,  <b g'>4) r |
    b'16( ds, a' cs,  g' b, fs' a,  <b g'>4) r |
    
    \barNumberCheck 33
    r16 b-\slurShapeR ( c b  g' b, c b  e g, a g  c e, fs e |
    \stemNeutral <ds fs b>16)\noBeam \osp #'(-1 . 1) b'( c b  g' b, c b
      e g, a g  \stemDown c e, fs e |
    \stemNeutral <ds fs b>16)\noBeam \osp #'(-1 . 1) b'( c b  g' b, c b
      e g, a g  \stemDown c e, fs e |
    \stemNeutral <ds fs b>4) r <fs a c>-- r |
    \addTenuto {
      <ds fs b>4 <e g b> <e a c> r8 <e a c> |
      <ds fs b>4 <e g b> <e a c> r8 <e a c> |
      <ds fs b>4 <e a!> <fs a> <e g> |
      <ds fs b>4 <e a> <fs a> <e g> |
      
      \barNumberCheck 41
      <ds fs b>4 <e a> <fs a> <e g> |
    }
    fs16( b, as b  ds b fs' ds  b' ds, fs b  ds b ds fs |
    b4) r r2 |
  }
  \repeat volta 2 {
    s2 \voiceOne r8 c!( b a! |
    g4) r8 <fs a>4( <e g> <fs a>8~ |
    q8 <e g>4 <fs a>8  gs4) r8 b(~ |
    b8 c4 b c b8~ |
    b8 a4 gs8) \oneVoice <d gs> <cs a'>4 q8 |
    
    \barNumberCheck 49
    q8( <e g!>) q( <d f>)  q8( <e g>4) q8 |
    q8( <d f>) q( <cs e>)  q( <d f>4) q8 |
    q8( <cs e>) q( <b d>)  q( <cs e>4) q8 |
    q8( <d fs!> <e g> <d fs>)  q( <cs e>4) q8 |
    q8( <d fs> <e g> <fs a>)  q( <e g>4) q8 |
    q8( <d fs> <cs e> <b d>  <as cs fs>4) r8 q-- |
    \addTenuto {
      <b e g>4 q <as cs fs> r8 q |
      <b e g>4 q <as cs fs> r8 <as cs e> |
      
      \barNumberCheck 57
      <b ds>4 r8 <ds fs b> <e a c>4 q |
      <ds fs b>4 r8 q <e a c>4 q |
    }
    <ds fs b>4-- r8 <ds fs>  q( <e g> <fs a> <gs b>) |
    q8( <a c>4) q8(  <g! b> <fs a> <e g> <ds fs> |
    <e g>16) \osp #'(-0.5 . 0) e( fs e  c' e, fs e  a c, d c  fs a, b a) |
    b'16( d, e d  b' d, e d  g b, c b  e g, a g) |
    a'16-\slurShapeAA ( c, d c  a' c, d c  fs a, b a  \stemDown ds fs, g fs) |
    g'16-\slurShapeW ( b, c b  g' b, c b  e g, a g  c e, fs e |
    
    \barNumberCheck 65
    \stemNeutral <ds fs b>4) <e g b>-- <e a c>-- r8 q-- |
    \addTenuto {
      <ds fs b>4 <e g b> <e a c> r8 q |
      <ds fs b>4 <g' b> c,, <fs' a> |
      b,,4 <e' g> a,, <ds' fs> |
    }
    \addStaccato {
      g,,8 b c[ e]  ds fs g[ b] |
      c8 e ds[ fs] g b
    } c16-\slurShapeX ( b a g |
    fs16 e ds cs  b a g fs  e a g fs  g e fs ds |
    e4) <a d!> <b d> <a c!> |
    
    \barNumberCheck 73
    <e gs b>4 <a d> <b d> <a c> |
    <e gs b>4 <a d> <e b' d> <e a c> |
    gs16( e ds e  gs e b' gs  e' b e gs  b gs e gs |
    b,16 e gs, b  e, gs b, e) r2 |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \voiceFour <b' e g>4 r r r8 b( |
    c8 b4.)  r8 ds( e b |
    c8 b4.)  r8 ds( e4) |
    r8 a,( b4.) g8( a4)~ |
    a8 \osp #'(-2 . -2) fs( g4.) e8( fs4)~ |
    fs8 \osp #'(-2 . -2) ds( e4.) \osp #'(-0.5 . -0.5) cs8( ds4) |
    g4.-\slurShapeG ( fs8  e g fs e |
    \hideNoteHead ds4.) s8 s2 |
    
    \barNumberCheck 9
    s1 |
    f4. f8 e4. e8 |
    d4. s8 s2 |
    s1 |
    d4 \osp #'(-2.5 . -2.5) c'( b) a |
    g4 g g g-\slurShapeQ (~ |
    g8 fs g4 fs) s |
    s1 |
    
    \barNumberCheck 17
    s1*24 |
    
    \barNumberCheck 41
    s1*3 |
  }
  \repeat volta 2 {
    <ds' fs>8^( g fs as,  b4) s |
    r8 b( c4 b c |
    b4 c b8) f'( e d |
    e4 f e f |
    e4 d) s2 |
    
    \barNumberCheck 49
    s1*24 |
    
    \barNumberCheck 73
    s1*4 |
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \clef treble % Initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    \voiceThree <e' g>4.-\slurShapeA ( <fs a>8  <g b> <fs a> <e g>4 |
    a4. fs8  g a b4 |
    a4. fs8  g a g4) |
    % Second beat, source has a duration of a quarter note
    r8 \osp #'(3 . 2.5) fs( g4.) \osp #'(3 . 2.5) e8( fs4) |
    \clef bass r8 d8-\slurShapeK ( e4.) c!8-\slurShapeL ( d4)~ |
    d8 \osp #'(2 . 2) b( c4.) a8-\slurShapeM ( b4) |
    s1 |
    b8-\slurShapeJ ( c b ds,  \oneVoice e c' b e, |
    
    \barNumberCheck 9
    \hideNoteHead b8) s2.. |
    s1 |
    s2 \voiceThree r8 fs'4-\slurShapeP ( g!8~ |
    g8 a4 cs d g,8 |
    \hideNoteHead fs8) s2.. |
    s1*3 |
    
    \barNumberCheck 17
    s1*24 |
    
    \barNumberCheck 41
    s1*3 |
  }
  \repeat volta 2 {
    s1*5 |
    
    \barNumberCheck 49
    s1*24 |
    
    \barNumberCheck 73
    s1*4 |
  }
}

leftHandLower = \relative {
  \clef treble % Initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    \voiceTwo \hideNotes e'4.-\slurShapeC ( fs8  g fs e4~ |
    \unHideNotes e4 ds  e8 fs <e g>4~ |
    e4 ds  e8 fs g[ c,] |
    d!4.) b8-\slurShapeE ( c4.) a8-\slurShapeF ( |
    \clef bass b4.) g8( a4.) fs8( |
    g4.) e8( fs4.) b,8-\slurShapeH \( |
    \oneVoice e8 b' d,![ b'] \grace { c,!16( } c2)\trill |
    \voiceTwo b4\) r s2 |
    
    \barNumberCheck 9
    \oneVoice b8-. c'-\slurShapeI ( b ds,  e c' b e, |
    d!8 c' b d,  c b' a c, |
    b8) a'( gs) b,-. \voiceTwo a4( b |
    c4 cs d e |
    \oneVoice fs8 a) d,[( fs]  g b c[ a] |
    \oneVoice <b d>4) <g b d> <c e> <b d> |
    <a c>4 <g d'>  d8( d' fs a) |
    d,,,4 r g8( g' b d) |
    
    \barNumberCheck 17
    d,,4 r g8( g' b d) |
    e,,4 r a8( a' c e) |
    e,,4 r a8( a' c e) |
    fs,,4 r g8( g' b d) |
    c,,4 r \stemDown d8 fs'( a c) |
    \stemNeutral ds,,4 r e8\noBeam \clef treble e''( g b) |
    \clef bass b,,4 r e8\noBeam \clef treble e'( g b) |
    \clef bass b,,4 r e8\noBeam \clef treble e'( g b) |
    
    \barNumberCheck 25
    \clef bass a,,4 r d8\noBeam \clef treble d'( fs a) |
    \clef bass a,,4 r d8\noBeam \clef treble d'( fs a) |
    \clef bass g,,4 r c8( c' e g) |
    g,,4( a)  r16 b( ds fs  b ds fs a) |
    b,,4 r  r16 b( ds fs  b ds fs a) |
    b,,4 r  r16 b( ds fs  b ds fs a) |
    b,,4 r  r16 e( g b \clef treble e g b g) |
    \clef bass b,,4 r  r16 e( g b \clef treble e g b g) |
    
    \barNumberCheck 33
    \clef bass e,4 \clef treble e''8-. r c-. r a-. r |
    \clef bass b,,4 \clef treble e''8-. r c-. r a-. r |
    \clef bass b,,4 \clef treble e''8-. r c-. r a-. r |
    \clef bass b,,16( b' b, a'  b, g' b, fs'  a, a' a, g'
      \stemDown a, fs' a, e' |
    b16 b' b, a'  b, g' b, fs'  a, a' a, g'  a, fs' a, e' |
    b16 b' b, a'  b, g' b, fs'  a, a' a, g'  a, fs' a, e' |
    b16--)-\slurShapeS ( b' as b  cs,-- b' as b  ds,-- b' as b  e,-- b' as b |
    b,16-- b' as b  cs,-- b' as b  ds,-- b' as b  e,-- b' as b |
    
    \barNumberCheck 41
    b,16-- b' as b  cs,-- b' as b  ds,-- b' as b  e,-- b' as b |
    \stemNeutral b,4) r b r |
    R1 \clef treble |
  }
  \repeat volta 2 {
    <b' ds>4.( <cs e>8 <ds fs>4) q( |
    <e g>4) <ds fs a>( <e g> <ds fs a> |
    <e g>4 <ds fs a> e) <e gs b>( |
    <e a c>4 <e b' d> <e a c> <e b' d> |
    <e a c>4 <e b'>) \clef bass a,,8( a' cs e) |
    
    \barNumberCheck 49
    a,,4 r  a8( a' cs e) |
    a,,4 r  a8( a' d f) |
    a,,4 r  a8( a' cs e) |
    a,,4 r  a8( a' cs e) |
    g,,4 r  g8( g' cs e) |
    g,,4 r  fs'16-\slurShapeT ( fs' fs, e'  fs, d' fs, cs' |
    e,16 e' e, d'  e, cs' e, b'  fs fs' fs, e'  fs, d' fs, cs' |
    e,16 e' e, d'  e, cs' e, b'  fs fs' fs, e'  fs, d' fs, cs' |
    
    \barNumberCheck 57
    b16)-\slurShapeU ( b' b, a'  b, g' a, fs'  a, a' a, g'  a, fs' a, e' |
    b16 b' b, a'  b, g' a, fs'  a, a' a, g'  a, fs' a, e') |
    \osp #'(-1 . 0) b,8( b' ds fs)  b,,4 r |
    a8( a' c e) b,4 \osp #'(2.5 . 0) b( |
    e4) \clef treble a''8-. r  fs-. r \clef bass d,,4-\slurShapeV ( |
    g,4) \clef treble g'''8-. r  e-. r \clef bass c,,4( |
    fs,4) \clef treble fs'''8-. r  ds-. r \clef bass b,,4( |
    e,4) \clef treble e'''8-. r  c-. r \clef bass a,,4 |
    
    \barNumberCheck 65
    b16-\slurShapeB ( b' b, a'  b, g' a, fs'  a, a' a, g'
      \stemDown a, fs' a, e' |
    b16 b' b, a'  b, g' a, fs'  a, a' a, g'  a, fs' a, e' |
    b16)( b' a b)  g,( g' fs g)  a,( a' g a)  fs,( fs' e fs) |
    \stemNeutral g,16( g' fs g)  e,( e' ds e)  fs,( fs' e fs)  b,( b' a b) |
    e,16-\slurShapeY ( fs g e  a b c a  b cs ds b  e fs g e |
    \clef treble \stemDown a16 b c a  b cs ds b  e fs g fs  a g fs e |
    ds16 cs b a \stemNeutral g fs e d! \clef bass c!8-.) a( b) b,-. |
    e16---\slurShapeZ ( e' ds e  fs,-- e' ds e  gs,-- e' ds e  a,-- e' ds e |
    
    \barNumberCheck 73
    e,16-- e' ds e  fs,-- e' ds e  gs,-- e' ds e  a,-- e' ds e) |
    e,,16--( e' ds e  fs,-- e' ds e  gs,-- e' ds e  a,-- e' ds e) |
    e,4-> r e-> r |
    e4-> r e-> r |
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
    s1\mf |
    s1 |
    s4 s2.-\tweak Y-offset #1 \p |
    s2\mf s-\tweak Y-offset #-0.5 \dim |
    s1 |
    s2.\p s8\< s\! |
    s4.\mf s8-\tweak Y-offset #-1 \> s4. s8\! |
    s1\p |
    
    \barNumberCheck 9
    s1 |
    s1\cresc |
    s1*2 |
    s4 s2.\f |
    s1 |
    s2\> s4\p s8-\tweak Y-offset #2 \< s\! |
    s2\mf s4.-\tweak Y-offset #0.5 \> s8-\tweak Y-offset #0.5 \p |
    
    \barNumberCheck 17
    s2. s8-\tweak Y-offset #1 \< s\! |
    s2\mf s4.-\tweak Y-offset #1 \> s8-\tweak Y-offset #1 \p |
    s1*3 |
    s2. s8\< s\! |
    s1\mf |
    s1 |
    
    \barNumberCheck 25
    s1*5 |
    s2-\tweak Y-offset #1 \p s16 \rotateHairpinA s8.\< s s16\! |
    s1\mf |
    s2\p s16 s8.-\tweak Y-offset #1 \< s s16\! |
    
    \barNumberCheck 33
    s1\f |
    s1*2 |
    s16\f s4..\p s\mf\> s16\! |
    s1\p |
    s1 |
    s4 s2.\cresc |
    s1 |
    
    \barNumberCheck 41
    s1 |
    s1\f |
    s1 |
  }
  \repeat volta 2 {
    s1\mf |
    s1*4 |
    
    \barNumberCheck 49
    s1*5 |
    s2 s16 s8.\p s8 s16\< s\! |
    s2\> s4.\! s16\< s\! |
    s2\> s4.\! s16\< s\! |
    
    \barNumberCheck 57
    s1-\tweak X-offset #-1 \f |
    s1 |
    s4. s8-\tweak Y-offset #1 \p\< s4. s8\! |
    s1\mf |
    s1\f |
    s1*3 |
    
    \barNumberCheck 65
    s16\f s4..\p s4.\mf s8\p |
    s2 s4.\mf s8\p |
    s1*2 |
    s1-\tweak Y-offset #-2 \cresc |
    s2. s4\f |
    s1 |
    s16 s8.\p s2.\cresc |
    
    \barNumberCheck 73
    s1*2 |
    s1\f |
    s1 |
  }
}

pedal = {
  \repeat volta 2 {
    s1*8 |
    
    \barNumberCheck 9
    s1*6 |
    s2 s\sd |
    s2\su s8 s4.\sd |
    
    \barNumberCheck 17
    s2\su s8 s4.\sd |
    s2\su s8 s4.\sd |
    s2\su s8 s4.\sd |
    s2\su s8 s4.\sd |
    s2\su s8 s4.-\tweak Y-offset #-1.5 \sd |
    s2\su s\sd |
    s2\su s8 s4.\sd |
    s2\su s8 s4.\sd |
    
    \barNumberCheck 25
    s2\su s8 s4.\sd |
    s2\su s8 s4.\sd |
    s2\su s8 s4.\sd |
    s2\su s16 s4..-\tweak Y-offset #-1 \sd |
    s2\su s16 s4..-\tweak Y-offset #-1 \sd |
    s2\su s16 s4..-\tweak Y-offset #-1 \sd |
    s2\su s16 s4..\sd |
    s2\su s16 s4..\sd |
    
    \barNumberCheck 33
    s1\su |
    s1*7 |
    
    \barNumberCheck 41
    s1 |
    s2 s\sd |
    s1\su |
  }
  \repeat volta 2 {
    s1*4 |
    s2 s8 s4.\sd |
    
    \barNumberCheck 49
    s2\su s8 s4.-\tweak Y-offset #-1 \sd |
    s2\su s8 s4.-\tweak Y-offset #-1 \sd |
    s2\su s8 s4.-\tweak Y-offset #-1 \sd |
    s2\su s8 s4.-\tweak Y-offset #-1 \sd |
    s2\su s8 s4.-\tweak Y-offset #-1 \sd |
    s1\su |
    s1*2 |
    
    \barNumberCheck 57
    s1*16 |
    
    \barNumberCheck 73
    s1*4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Moderato" 4 = 126
    s1*40 |
    
    \barNumberCheck 41
    s1 |
    \set Score.tempoHideNote = ##t
    s2 \tempo 4 = 116 s4 \tempo 4 = 108 s |
    s1 |
  }
  \repeat volta 2 {
    \tempo 4 = 126
    s1*5 |
    
    \barNumberCheck 49
    s1*24 |
    
    \barNumberCheck 73
    s1*2 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s1 |
          \tempo 4 = 116 s4 \tempo 4 = 108 s \tempo 4 = 100 s2 |
        }
        {
          s2. \tempo 4 = 112 s4 |
          \tempo 4 = 100 s4 \tempo 4 = 88 s \tempo 4 = 60 s2 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*4 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \pageBreak
  
  % page 2
  s1*4 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*4 \pageBreak
  
  % page 3
  s1*5 \break
  s1*4 \break
  s1*3 \break
  s1*3 \break
  s1*3 \pageBreak
  
  % page 4
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
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
    \new Staff = "lower" \with { \clef bass } \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists #initial-clef-change-engraver
    }
  }
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
