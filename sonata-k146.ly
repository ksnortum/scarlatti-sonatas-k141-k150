%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.146"
  source = "https://ks15.imslp.org/files/imglnks/usimg/2/28/IMSLP626925-PMLP473598-Sonata_K._146_(as_L._349).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . -2))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 2.75) (0.25 . 2.75) (0 . 2.75) (0 . 2.75))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (1 . -1) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . -3) (0 . 7) (1 . 1.75)) \etc
slurShapeE = \shape #'((0 . 0) (0 . -1) (0 . 3) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 1) (0 . -2))
                      ) \etc
slurShapeH = \shape #'((0 . 0) (0 . 1) (0 . -2) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . -2) (0 . 6) (1 . 2)) \etc

%
% Music
%

global = {
  \time 3/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''16([\prall c32 d]  e8-.) fs-. |
    r32 \osp #'(0 . 2.5) g( d b  g8-.)\noBeam r |
    d'16([\prall c32 d]  e8-.) fs-. |
    g32( b g d  b8-.)\noBeam r |
    \osp #'(-1 . 1) d16( b' c, a' b, g' |
    a,32 fs' d a  fs8-.)\noBeam r  |
    a16([\prall g32 a]  b8-.) cs-. |
    r32 d( a fs  d8-.) r |
    
    \barNumberCheck 9
    a'16( d b e cs fs |
    d16 g e a fs e |
    g16 fs e fs e d |
    a'16 e f e g f |
    bf16 cs, f e d cs |
    d16 a' g fs! e d) |
    cs8(\prall b16 cs a8-.) |
    \voiceOne gs32( a s16 cs32 d s16 ds32 e s16 |
    
    \barNumberCheck 17
    <e g!>8-.) <d! fs>-. <cs e>-. |
    gs32( a s16 cs32 d s16 ds32 e s16 |
    <fs a>8-.) <e g!>-. <d! fs>-. |
    gs,32( a s16 cs32 d s16 ds32 e s16 |
    <g! b>8-.) <fs a>-. <e g>-. |
    <d fs>8-. \appoggiatura { q16 } <cs e>4\prall |
    \osp #'(0 . -1) cs,32( d s16 ds32 e s16 fs32 g s16 |
    gs32 a s16 as32 b s16 cs32 d s \voiceFour \hideNoteHead d) |
    
    \barNumberCheck 25
    \beamEighthNotes.38
    \oneVoice r32 \osp #'(-1 . 0) b( b' a  g fs e d  cs b a e') |
    r32 d( cs b  a g fs e d8-.) |
    \voiceOne cs32-\slurShapeA ( d s16 ds32 e s16 fs32 g s16 |
    gs32 a s16 as32 b s16 cs32 d s \voiceFour \hideNoteHead d) |
    \oneVoice r32 \osp #'(-1 . 0) b( b' a  g fs e d  cs b a e' |
    d8-.) fs32-\slurShapeB ( a fs d  a fs' d a |
    fs8-.) d'32-\slurShapeC ( fs d a  fs d' a fs |
    d8-.) a'32-\slurShapeD _( d a fs  d a' fs d |
    
    \barNumberCheck 33
    << 
      { \staffDown \hideNoteHead d,4) s8 } 
      \new Voice { \oneVoice R4. | } 
    >>
  }
  \repeat volta 2 {
    \staffUp \revertBeaming
    a''16([\prall g32 a]  b8-.) cs-. |
    r32 d( a fs  d8-.)\noBeam r |
    a'16([\prall g32 a]  b8-.) cs-. |
    d32( fs d a fs8-.)\noBeam r |
    d'16( a c! b a gs) |
    r32 \osp #'(0 . 2.5) a'( e c  a8-.)\noBeam r |
    e'16([\prall ^\trillNatural d32 e]  fs!8-.) gs-. |
    
    \barNumberCheck 41
    r32 \osp #'(0 . 2.5) a( e c  a8-.)\noBeam r |
    e'16-\slurShapeE ( g,! b a g fs) |
    r32 \osp #'(0 . 2.5) g'( d b  g8-)\noBeam r |
    d16( g e a fs b |
    g16 c a d b a |
    c16 b a b a g |
    \stemUp d'16 a bf a c bf |
    ef16 fs, bf a g fs |
    
    \barNumberCheck 49
    g16 d' c b! a g) |
    fs8(\prall e16 fs d8-.)\noBeam |
    \voiceOne cs32( d s16 fs32 g s16 gs32 a s16 |
    <a c!>8-.) <g! b>-. <fs a>-. |
    cs32-\slurShapeF ( d s16 fs32 g s16 gs32 a s16 |
    <b d>8-.) <a c!>-. <g! b>-. |
    cs,32( d s16 fs32 g s16 gs32 a s16 |
    <c! e>8-.) <b d>-. <a c>-. |
    
    \barNumberCheck 57
    <g b>8-. \appoggiatura { q16 } <fs a>4\prall |
    \voiceDown fs,32-\slurShapeG ( g s16 gs32 a s16 as32 b s16 |
    \staffUp \voiceOne cs32 d s16 ds32 e s16 fs32 g s \hideNoteHead g) |
    \beamEighthNotes.38
    \oneVoice r32 e( e' d  c b a g  fs e d a') |
    r32 g( fs e  d c b a g8-.) |
    \voiceDown fs32-\slurShapeI ( g s16 gs32 a s16 as32 b s16 |
    \staffUp \voiceOne cs32 d s16 ds32 e s16 fs32 g s \hideNoteHead g) |
    \oneVoice r32 e( e' d  c b a g  fs e d a' |
    
    \barNumberCheck 65
    g8-.) \osp #'(-0.5 . -0.5) g'32( b g d  b g' d b |
    g8-.) \osp #'(-1 . -0.5) d'32( g d b  \stemDown g d' b g |
    \stemNeutral d8-.) g32-\slurShapeJ _( b g d  b g' d b |
    << 
      { \staffDown \hideNoteHead g4) s8 | } 
      \new Voice { \oneVoice R4. | } 
    >>
  }
}

leftHand = \relative {
  \global
  \clef treble % With initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    <g' b>8( c-.) a-. |
    g8-. \clef bass  r32 \osp #'(0 . 1) g( d b g,8)\noBeam _\md |
    \clef treble <g'' b>8( c-.) a-. |
    g8-. \clef bass  r32 \osp #'(0 . 1) g( d b g,8)\noBeam _\md |
    \clef treble b''16( g a fs g8 |
    d8-.) \clef bass r32 \osp #'(0 . 0.5) d( a fs d,8-.)\noBeam _\md |
    <d'' fs>( g-.) e-. |
    d8-. r32 \osp #'(0 . 0.5) d( a fs d,8-.)\noBeam _\md
    
    \barNumberCheck 9
    \clef treble fs''16_( d g e a fs |
    \stemUp b16 g cs a d cs |
    b16 a g a b g |
    a16 cs d c bf a |
    g16 bf a g f e |
    \clef bass \stemNeutral d16 cs b! a g b |
    a8 e a,) |
    \voiceUp s16 gs''32 a s16 cs32 d s16 ds32 e |
    
    \barNumberCheck 17
    a,4.-> |
    s16 gs32 a s16 cs32 d s16 ds32 e |
    a,4.-> |
    s16 gs32 a s16 cs32 d s16 ds32 e |
    a,4.->~ |
    a4. |
    s16 cs,32 d s16 ds32 e s16 fs32 g |
    s16 gs32 a s16 as32 b s16 cs32 d |
    
    \barNumberCheck 25
    \staffDown \oneVoice g,8( a-.) a,-. |
    d,4(~ d32 fs a d) |
    \voiceUp s16 cs32 d s16 ds32 e s16 fs32 g |
    s16 gs32 a s16 as32 b s16 cs32 d |
    \staffDown \oneVoice g,8( a-.) a,-. |
    d,32( fs a d) r8 r |
    d,32( fs a d) r8 r |
    d,32( fs a d) r8 r |
    
    \barNumberCheck 33
    d,,4-> r8 |
  }
  \repeat volta 2 {
    << { fs''8( g-.) e-. } \\ { d4. } >> |
    d8-. r32 \osp #'(0 . 0.5) d( a fs d,8-.)\noBeam _\md |
    << { fs''8( g-.) e-. } \\ { d4. } >> |
    d8-. r32 \osp #'(0 . 0.5) d( a fs d,8-.)\noBeam _\md |
    \osp #'(-1 . 0) d''16( f e d c! b |
    a8-.) r32 \osp #'(0 . 0.5) a'( e c a,8-.)\noBeam _\md |
    \clef treble << { c''16([\prall b32 c] d8-.) b-. } \\ { a4. } >> |
    
    \barNumberCheck 41
    a8-.\noBeam \clef bass r32 \osp #'(0 . 0.5) a( e c a,8-.)\noBeam _\md |
    c'16( e d c b a |
    g8-.) r32 \osp #'(0 . 0.5) g'( d b g,8-.)\noBeam _\md |
    b'16( g c a d b |
    e16 c fs d g fs |
    e16 d c d e c |
    d16 fs g f ef d |
    c16 ef d c bf a |
    
    \barNumberCheck 49
    g16 fs e! d c e |
    d8 a d,) |
    \voiceUp s16 cs''32 d s16 fs32 g s16 gs32 a |
    d,4.-> |
    s16 cs32 d s16 fs32 g s16 gs32 a |
    d,4.-> |
    s16 cs32 d s16 fs32 g s16 gs32 a |
    d,4.->~ |
    
    \barNumberCheck 57
    d4. |
    \staffDown \voiceTwo s16 fs,32 g s16 gs32 a s16 as32 b |
    \voiceUp s16 cs32 d s16 ds32 e s16 fs32 g |
    \staffDown \oneVoice c,8( d-.) d,-. |
    g,4-\slurShapeH (~ g32 b d g) |
    \voiceTwo s16 fs32 g s16 gs32 a s16 as32 b |
    \voiceUp s16 cs32 d s16 ds32 e s16 fs32 g |
    \staffDown \oneVoice c,8( d-.) d,-. |
    
    \barNumberCheck 65
    g,32( b d g) r8 r |
    g,32( b d g) r8 r |
    g,32( b d g) r8 r |
    g,4-> r8 |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. |
    s4.\p |
    s4. |
    s4.\p |
    s4.\mf |
    s4.-\tweak Y-offset #1 \f |
    s4. |
    
    \barNumberCheck 9
    s4.\p |
    s4.*3 |
    s4.-\tweak Y-offset #1 \cresc |
    s4. |
    s4.\mf |
    s4\p\< s16. s32\! |
    
    \barNumberCheck 17
    s4\f\> s8\! |
    s4\p\< s16. s32\! |
    s4\f\> s8\! |
    s4\p\< s16. s32\! |
    s4.\f |
    s8 \grace { s16-\tweak Y-offset #1 \> } s4\! |
    s8\p s4-\tweak bound-details.left.padding -0.5 \cresc |
    s4. |
    
    \barNumberCheck 25
    s4.-\tweak Y-offset #2 \f |
    s4. |
    s8\p s4-\tweak bound-details.left.padding -0.5 \cresc |
    s4. |
    s4.\f |
    s4. |
    s4.\dim |
    s4. |
    
    \barNumberCheck 33
    s4.\p |
  }
  \repeat volta 2 {
    s4.\f |
    s4. |
    s4.\p |
    s4. |
    s4\p\< s16. s32\! |
    s4.\mf |
    s4.\f |
    
    \barNumberCheck 41
    s4. |
    s4\p\< s16 s\! |
    s4.\mf |
    s4.\p |
    s4.*3 |
    s4.\cresc |
    
    \barNumberCheck 49
    s4. |
    s4.-\tweak Y-offset #1.5 \mf |
    s4\p\< s16. s32\! |
    s4.\f |
    s4\p\< s16. s32\! |
    s4\f\> s8\! |
    s4\p\< s16. s32\! |
    s4.\f |
    
    \barNumberCheck 57
    s8 \grace { s16-\tweak Y-offset #2 \> } s4\! |
    s16-\tweak Y-offset #2 \p s-\tweak Y-offset #1 \cresc s4 |
    s4. |
    s4.\f |
    s4. |
    s16\p s-\tweak Y-offset #-1 \cresc s4 |
    s4. |
    s4.\f |
    
    \barNumberCheck 65
    s4. |
    s4.\dim |
    s4. |
    s4.\p |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegretto" 8 = 144
    s4.*24 |
    
    \barNumberCheck 25
    s4.*7 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 8 = 132 s \tempo 8 = 120 s |
    
    \barNumberCheck 33
    \tempo 8 = 112 s4. |
  }
  \repeat volta 2 {
    \tempo 8 = 144
    s4.*7 |
    
    \barNumberCheck 41
    s4.*24 |
    
    \barNumberCheck 65
    s4.*2 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 8 = 132 s \tempo 8 = 120 s |
          \tempo 8 = 112 s4. |
        }
        {
          \tempo 8 = 126 s8 \tempo 8 = 112 s \tempo 8 = 100 s |
          \tempo 8 = 80 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*4 \break
  s4.*4 \break
  s4.*4 \break
  s4.*4 \break
  s4.*4 \break
  s4.*4 \pageBreak
  
  % page 2
  s4.*3 \break
  s4.*3 \break
  s4.*3 \break
  s4.*4 \break
  s4.*4 \break
  s4.*4 \pageBreak
  
  % page 3
  s4.*4 \break
  s4.*4 \break
  s4.*5 \break
  s4.*3 \break
  s4.*3 \break
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
    \new Staff = "lower" \with { \clef bass } \leftHand
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
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
