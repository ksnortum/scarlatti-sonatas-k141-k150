%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

#(ly:expect-warning "articulation failed to steal")
#(expect-warning-times 12 "barcheck failed")

\header { 
  title = "Sonata in D major"
  opus = "K.145"
  source = "https://ks15.imslp.org/files/imglnks/usimg/9/94/IMSLP626924-PMLP473593-Sonata_K._145_(as_L._369).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . -2.5) (0.25 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . -1) (0 . -1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1.25) (0 . -2.5))
                      ) \etc
slurShapeC = \shape #'((1 . 6.5) (1 . 4) (0 . 9) (0 . 5)) \etc
slurShapeD = \shape #'(
                        ((0 . 0.5) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . -2.5) (0.25 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeF = \shape #'((0.25 . 0) (0.25 . 0) (-0.25 . 0) (-0.25 . 0)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (-0.25 . 0) (-0.25 . 0)) \etc
slurShapeH = \shape #'((0.25 . 0) (0.25 . 0) (0 . -0.5) (0 . -0.5)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 1) (0 . 2.5))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -2.75) (0 . -2.75) (0 . -2.75) (0 . -2.75))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . -1.4) (0 . -1) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . -2) (0 . -2.5))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . -2) (0 . 2))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (-0.25 . 0) (-0.25 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'((0.25 . 0) (4 . -2) (0 . 1) (3 . -2.5)) \etc

%
% Music
%

global = {
  \time 3/8
  \key d \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \tag layout { \grace { \osp #'(0 . -2.5) a'32( d fs } a8-.)\noBeam }
      \tag midi { \partial 64. a,128( d fs a8-.) }
      a,-. g-. |
    \set subdivideBeams = ##t
    \omit TupletBracket
    \stemUp \tuplet 3/2 8 { \osp #'(0 . -2.5) d16_( fs g  a b cs  d fs g } |
    \stemNeutral a8-.)\noBeam a,-. g-. |
    \omit TupletNumber
    \stemUp \tuplet 3/2 8 { d16-\slurShapeA _( fs g  a b cs  d fs g } |
    \stemNeutral a8-.)\noBeam a,-. g-. |
    fs16( e d8-.) r |
    r16 a'( fs8. d16~ |
    % Third beat, source has a duration of an eighth note
    d16) g( e8. cs16~ |
    
    \barNumberCheck 9
    cs16) a'( fs8. d16~ |
    d16) g( e8. cs16~ |
    % Third beat, source has a duration of an eighth note
    cs16) fs( d8.) g16^(~ |
    \voiceOne g16 fs8 e) b'16_(~ |
    \oneVoice b16 a fs8.) \osp #'(2 . 0) d'16(~ |
    d16 cs a8.) fs'16(~ |
    fs16 e8 cs a16~ |
    a8) d-. b'-. |
    
    \barNumberCheck 17
    r16 e,8( cs a16~ |
    a8) d-. b'-. |
    s8 \voiceOne a-.^\ms s |
    s8 a-. s |
    s8 a-. s |
    s8 a-. s |
    s8 fs-. s |
    s8 fs-. s |
    
    \barNumberCheck 25
    s8 b-. a-. |
    gs8-. s4 |
    s8 b-. a-. |
    gs8-. s4 |
    \beamEighthNotes.38
    \oneVoice <gs, b>8-. f'32( d! as b  e c gs! a | 
    d32 b fs gs  c a ds, e  b' gs ds e |
    c'32 a ds, e  b' g! ds e  a f cs! d |
    gs32)-\slurShapeJ ( e fs gs  a cs! b a  \stemUp b d cs b |
    
    \barNumberCheck 33
    \stemNeutral cs32 a b cs  d e fs gs  a fs e d |
    e32 cs b a  d,8-.)[ e-.] |
    \tag layout { f4.\prallprall } \tag midi { f\prall } |
    \set subdivideBeams = ##f
    f'16-\slurShapeK ([ e ds c b a] |
    gs16[ f e a gs d'] |
    \osp #'(-1 . -1.5) cs!32)( a' gs fs  e d cs b  a e' d cs |
    fs32 e d cs  b a gs fs  e d cs b) |
    r32 e( cs a)  \voiceOne \slurDown b'\rest a( e cs)  d'\rest cs( a e) |
    
    \barNumberCheck 41
    r32 e'( cs a)  r a'( e cs)  r e( cs a) |
    r32 cs( a e)  r a( e cs)  r e( cs a) |
    \oneVoice R4. |
  }
  \repeat volta 2 {
    \revertBeaming
    \grace { \osp #'(0 . -2.5) e'32( a cs } e8-.)\noBeam e,-. d-. |
    \set subdivideBeams = ##t
    \tuplet 3/2 { \osp #'(0 . -2.5) a16_( cs d  e fs gs  a cs d } |
    e8-.)\noBeam e,-. d-. |
    \tuplet 3/2 { a16-\slurShapeL _( cs d  e fs gs  a cs d } |
    e8-.)\noBeam e,-. d-. |
    
    \barNumberCheck 49
    cs16( b a8) r |
    r16 e''( cs8. a16~ |
    \stemDown a16) d( b8. gs16~ |
    gs16) e'( cs8. a16~ |
    % Third beat, source has a duration of an eighth note
    a16) d( b8. gs16~ |
    gs16) e'( cs8. a16~ |
    a16) a'( fs8. e16~ |
    % Third beat, source has a duration of an eighth note
    e16) fs( ds8. c16~ |
    
    \barNumberCheck 57
    c16) b8( fs' a,16~ |
    a16 g8) \osp #'(-0.5 . 0) e'( d16~ |
    d16 cs!8 gs' b,16~ |
    \stemNeutral b16 a8 fs e16) |
    r16 b''8->\noBeam \clef bass fs,,( ds16) |
    % First beat, source has a duration of an eight rest
    r16 \clef treble gs'8( e d!16) |
    r16 a''8->\noBeam \clef bass e,,( cs16) |
    r16 \clef treble fs'8( d c16) |
    
    \barNumberCheck 65
    s8 \voiceOne b' s |
    s8 cs s |
    s8 d s |
    s8 e s |
    \oneVoice fs,32\([ a g fs]  b[ g a fs]  g[ e fs d] |
    \grace { cs32( } cs8.)\trill b32 cs a8-.\) |
    e'32( cs gs a  g'!8-.) fs-. |
    e32( cs gs a  <cs e>8-.) <d f>-. |
    
    \barNumberCheck 73
    e32( cs gs a  g'!8-.) fs-. |
    e32( cs gs a  <cs e>8-.) <d f>-. |
    \beamEighthNotes.38
    <cs e>8-. bf''32-\slurShapeP ( g! ds e  a f cs d |
    g32 e b cs  f d gs, a  e' cs! gs a |
    f'32 d gs, a  e' cs gs a  \stemDown d bf fs! g |
    cs32)-\slurShapeQ ( a b cs  d fs! e d  e g fs e |
    fs32 d e fs  g b a g  a cs b a |
    b32 a g fs  e d cs b  \stemNeutral a g fs e |
    
    \barNumberCheck 81
    fs32 d e fs  g a b cs  d b a g |
    \revertBeaming
    a32[ fs e d]  g,8-.) a-. |
    \tag layout { bf4.\prallprall ^\trillNatural } \tag midi { bf\prall } |
    \set subdivideBeams = ##f
    bf''16( a gs f e d |
    cs! bf a d cs g'! |
    \beamEighthNotes.38
    fs!32)-\slurShapeR ( d cs b  a g fs e  d a' g fs |
    \voiceOne b32 a g fs  e[ d cs \voiceDown b]  a g fs e) |
    \tweak X-offset 0.25 r32 \slurDown a( fs d)  r d'( a fs)
      \staffUp b'\rest fs( d a) |
    
    \barNumberCheck 89
    r32 a'( fs d)  r d'( a fs)  r fs'( d a) |
    r32 a'( fs d)  r fs( d a)  r d( a fs) |
    r32 a( fs d)  r fs( d a)  \voiceDown r d_( a fs) |
    \staffUp \oneVoice R4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \grace { s16. } s4.*8 |
    
    \barNumberCheck 9
    s4.*2 |
    s4 s16 \voiceFour e'-\slurShapeC ( |
    d8 \voiceDown a b) |
    r8 d4 |
    e8( fs4) |
    s4.*2 |
    
    \barNumberCheck 17
    s4.*2 |
    \set subdivideBeams = ##t
    \tupletOff
    \voiceUp \tuplet 3/2 { 
      a16-\slurShapeE ( c b  a c d  e c b |
      a16)-\slurShapeG ( c b  a c d  e c b |
      a16)-\slurShapeF ( c b  a c d  e c b |
      a16)-\slurShapeH ( c b  a c d  e c b |
      a16)-\slurShapeI ( c b  a b c  ds c b |
      \osp #'(0 . -2) a16)( c b  a b c
    }
    ds32[ c b a] |
    
    \barNumberCheck 25
    \slurUp b32)( gs ds e  d'8-.) cs!-. |
    b32( gs ds e  <gs b>8-.) <a c>-. |
    b32( gs ds e  d'8-.) cs!-. |
    b32( gs ds e  <gs b>8-.) <a c>-. |
    s4.*4 |
    
    \barNumberCheck 33
    s4.*8 |
    
    \barNumberCheck 41
    s4.*3 |
  }
  \repeat volta 2 {
    \grace { s16. } s4.*5 |
    
    \barNumberCheck 49
    s4.*16 |
    
    \barNumberCheck 65
    \slurDown \tuplet 3/2 { 
      b,16-\slurShapeO ( cs! d  e fs g  b, cs d |
      cs16 d e  fs g a  cs, d e |
      d16 e fs  g a b  d, e fs |
      e16 fs g  a b cs  e, fs g |
    }
    \hideNoteHead fs32) s16. s4 |
    s4.*3 |
    
    \barNumberCheck 73
    s4.*16 |
    
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
    \grace { s16. } s4.*6 |
    \voiceThree r8. fs16_( b8)~ |
    b8. g16_( a8)~ |
    
    \barNumberCheck 9
    a8. fs16_( b8)~ |
    b8. g16_( a8) |
    s4.*6 |
    
    \barNumberCheck 17
    s4.*24 |
    
    \barNumberCheck 41
    s4.*3 |
  }
  \repeat volta 2 {
    \grace { s16. } s4.*5 |
    
    \barNumberCheck 49
    s4. |
    r8. cs16_( fs8)~ |
    fs8. d16_( e8)~ |
    e8. cs16_( fs8)~ |
    fs8. d16_( e8)~ |
    e8. cs16_( fs8)~ |
    fs8. c16_( fs8)~ |
    fs8. fs16( a8) |
    
    \barNumberCheck 57
    r8 a,( b) |
    r8 g( fs) |
    r8 cs'4~ |
    cs8 s4 |
    s4.*4 |
    
    \barNumberCheck 65
    s4.*24 |
    
    \barNumberCheck 89
    s4.*4 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \tag layout { \grace { \osp #'(0 . -2) d32( fs a } d8-.)\noBeam }
      \tag midi { \partial 64. d,128( fs a d8-.) }
      <a d fs>-. <a cs e>-. |
    d,4 r8 |
    r8 <a' d fs>-. <a cs e>-. |
    d,4 r8 |
    r8 <a' d fs>-. <a cs e>-. |
    d8( a-.) d,,-.\noBeam |
    \voiceTwo d'4.-\slurShapeB ( |
    e4. |
    
    \barNumberCheck 9
    d4. |
    e4. |
    d8) fs( <cs a'> |
    d4) \osp #'(-3 . -2.5) g8( |
    fs4) b8-\slurShapeD ( |
    a4 d8 |
    \oneVoice a8-.)\noBeam \clef treble a''-.\noBeam \clef bass a,,( |
    b8-.)[ e-. gs16-.]\noBeam e,( |
    
    \barNumberCheck 17
    \oneVoice a8-.)\noBeam \clef treble a''-.\noBeam \clef bass a,,( |
    b8-.)[ e-. gs16-.]\noBeam e,( |
    a8-.) s a-- |
    g!8-- s g-- |
    f8-- s f-- |
    e8-- s e-- |
    ds8-- s ds-- |
    ds8-- s ds-- |
    
    \barNumberCheck 25
    e8-- s4 |
    s8 e-. ds-. |
    e8-- s4 |
    \addStaccato {
      s8 e ds |
      e8\noBeam <d d'> <c c'> |
      <b b'>8 <a a'> <gs gs'> |
      \stemDown <a a'>8 <g! g'!> <f f'> |
    }
    \override Parentheses.font-size = #-2
    \stemNeutral <\parenthesize e e'>-.\noBeam fs'( gs |
    
    \barNumberCheck 33
    a8-.) r r |
    cs,( d-.) e-. |
    f4. |
    R4.*2 |
    a8( cs, a |
    d8-.) e4( |
    \addStaccato {
      a32) s16. \voiceUp cs32 s16.  e32 s16. |
      
      \barNumberCheck 41
      a32 s16.  cs32 s16.  a32 s16. |
      e32 s16.  cs32 s16.  \staffDown \oneVoice a32 s16. |
    }
    a,16( cs32 e a4) |
  }
  \repeat volta 2 {
    \grace { \osp #'(0 . -2.5) a,32( cs e } a8-.)\noBeam <e a cs>-.
      <e gs b>-. |
    a,4 r8 |
    r8 <e' a cs>-. <e gs b>-. |
    a,4 r8 |
    r8 <e' a cs>-. <e gs b>-. |
    
    \barNumberCheck 49
    a8[ r16 e( a,8-.)] |
    \voiceTwo a'4.-\slurShapeM ( |
    b4. |
    a4. |
    b4. |
    a4.) |
    \osp #'(-2.5 . -2.5) a4.( |
    b4.) |
    
    \barNumberCheck 57
    ds,4.-\slurShapeN ( |
    e4.) |
    e4( es8 |
    fs8)\noBeam \clef treble \oneVoice fs''( as) |
    \clef bass b,,8( ds a') |
    e,8\noBeam \clef treble e''( gs) |
    \clef bass a,,8( e' g!) |
    d,8\noBeam\clef treble d''( fs) |
    
    \barNumberCheck 65
    \clef bass g,,,8 s g-- |
    a8-- s a-- |
    b8-- s b-- |
    cs8-- s \osp #'(3 . 0) cs( |
    \stemDown d g-.) g,-. |
    \oneVoice \stemNeutral a4. |
    r8 \clef treble e'''-. d-. |
    cs8-.\noBeam \clef bass a,,-. gs-. |
    
    \barNumberCheck 73
    a8-.\noBeam \clef treble e'''-. d-. |
    cs8-.\noBeam \clef bass a,,-. gs-. |
    \addStaccato {
      a8\noBeam g''! f |
      e8 d cs |
      d8 cs bf |
    }
    a8-. fs!( cs |
    d8 b') fs-. |
    g4 a8-. |
    
    \barNumberCheck 81
    d,4 r8 |
    r8 g,-. a-. |
    bf4. |
    R4.*2 |
    d4( fs8) |
    \voiceTwo g,8-. a4( |
    \addStaccato {
      d32) s16.  fs32 s16.  a32 s16. |
      
      \barNumberCheck 89
      \voiceUp d32 s16.  fs32 s16.  a32 s16. |
      d32 s16.  a32 s16.  fs32 s16. |
      d32 s16.  \staffDown \voiceTwo a32 s16.  fs32 s16. |
    }
    \oneVoice d16( fs32 a d4) |
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
    \grace { s16. } s8\f s4\p |
    s4-\tweak Y-offset #-2 \< \tuplet 3/2 { s8 s16\! } |
    s8-\tweak Y-offset #-2 \f s4\p |
    s4-\tweak Y-offset #-2 \< \tuplet 3/2 { s8 s16\! } |
    s8\f s4\p |
    s4.\f |
    s16 s\mf s4 |
    s4. |
    
    \barNumberCheck 9
    s16 s\p s4 |
    s4.*2 |
    s4.-\tweak Y-offset #-3 \cresc |
    s4. |
    s4 s16 s-\tweak extra-offset #'(0 . -1) \f |
    s4.*2 |
    
    \barNumberCheck 17
    s16 s\p s4 |
    s4. |
    s4.-\tweak Y-offset #-1 \cresc |
    s4.*5 |
    
    \barNumberCheck 25
    s4.\f |
    s4. |
    s4.-\tweak Y-offset #-2 \p |
    s4. |
    s8 s4\cresc |
    s4.*2 |
    s4.\f |
    
    \barNumberCheck 33
    s4.*3 |
    s4.\mf |
    s4.*2 |
    s4 s16.\< s32\! |
    s32\f s16.\p s32 s8..\cresc |
    
    \barNumberCheck 41
    s8 s4\f |
    s4.*2 |
  }
  \repeat volta 2 {
    \grace { s16. } s8\f s4\p |
    s4-\tweak Y-offset #-2 \< \tuplet 3/2 { s8 s16\! } |
    s8-\tweak Y-offset #-2 \f s4\p |
    s4-\tweak Y-offset #-2 \< \tuplet 3/2 { s8 s16\! } |
    s8\f s4\p |
    
    \barNumberCheck 49
    s4.\f |
    s16 s\mf s4 |
    s4. |
    s16 s-\tweak Y-offset #1 \p s4 |
    s4.*2 |
    s16 s\mf s4 |
    s4. |
    
    \barNumberCheck 57
    s16 s-\tweak Y-offset #-2 \p s4 |
    s8 s4-\tweak Y-offset #-1 \mf |
    s4.*2 |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 65
    s4.\p |
    s4.\cresc |
    s4.*2 |
    s4.\f |
    s4. |
    s4.\p |
    s4.-\tweak Y-offset #-1 \cresc |
    
    \barNumberCheck 73
    s4.*2 |
    s8-\tweak Y-offset #-3 \f s16\p s8.-\tweak Y-offset #-1 \cresc |
    s4.*2 |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 81
    s4.*3 |
    s4.\mf |
    s4.*2 |
    s4 s16.\< s32\! |
    s32\f s\p s16\cresc s4 |
    
    \barNumberCheck 89
    s4. |
    s4.\f |
    s4.*2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegretto" 4. = 60
    \grace { s16. } s4.*40 |
    
    \barNumberCheck 41
    s4.*3 |
  }
  \repeat volta 2 {
    \grace { s16. } s4.*5 |
    
    \barNumberCheck 49
    s4.*40 |
    
    \barNumberCheck 89
    s4.*2 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        { s4.*2 | }
        {
          \tempo 4. = 54 s8 \tempo 4. = 48 s \tempo 4. = 42 s |
          \tempo 4. = 38 s8 \tempo 4. = 30 s4 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  \grace { s16. } s4.*4 \break
  s4.*5 \break
  s4.*5 \break
  s4.*5 \break
  s4.*4 \pageBreak
  
  % page 2
  s4.*3 \break
  s4.*3 \break
  s4.*3 \break
  s4.*5 \break
  s4.*3 \break
  s4.*3 \pageBreak
  
  % page 3
  \grace { s16. } s4.*4 \break
  s4.*5 \break
  s4.*5 \break
  s4.*5 \break
  s4.*4 \break
  s4.*4 \pageBreak
  
  % page 4
  s4.*4 \break
  s4.*3 \break
  s4.*3 \break
  s4.*5 \break
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
