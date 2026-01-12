%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in F♯ minor"
  opus = "K.142"
  source = "https://ks15.imslp.org/files/imglnks/usimg/7/78/IMSLP302577-PMLP472726-Scarlatti_Sonate_K.142.pdf"
}

%
% Positions and shapes
%

beamPositionsA = \once \override Beam.positions = #'(-5.25 . -6.5)

%
% Music
%

global = {
  \time 12/8
  \key fs \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    r8 fs'' cs  a fs cs s4. s4 cs'8 |
    \appoggiatura { e16 } d8 cs b \appoggiatura { cs16 } b8 a gs
      \appoggiatura { gs16 } a4. \appoggiatura { b16 } a8 gs a |
    b8 a gs  fs gs es \appoggiatura { es16 } fs4.~ fs4 cs'8 |
    \appoggiatura { e!16 } d8 cs b \voiceOne b b' gs  gs4 a8  a8 gs a |
    b8 a gs  fs gs es \oneVoice es fs4~  fs8.\prall es16 fs gs |
    a8 fs cs  a fs a'  a gs fs  gs\prall fs gs |
    fs8 d a  \stemDown fs d fs'  fs e ds  e\prall ds e |
    d!8 b gs \stemNeutral d b' d \appoggiatura { e16 } d8 cs b  cs d e |
    
    \barNumberCheck 9
    fs8 gs a  cs, b a  \stemDown gs a b  cs d e |
    fs8 gs a  cs, b a  gs a b  cs d e |
    fs8 gs a  cs, b a  \stemNeutral gs fs e~  e e e' |
    \voiceOne e8 c d  d b c  c a c  b4\prall d8 |
    d8 b c  c a b  b gs b  a4\prall c8 |
    c8 a b  b gs a  a fs a gs4.\prall |
    \oneVoice r2. r8 f' d b4.\prall |
    r2. r8 e8 c a4.\prall |
    
    \barNumberCheck 17
    r2. r8 e' d  cs! b a |
    b8 cs d  cs b a  b cs d  cs d e |
    fs8 gs a  a, b gs  a e' d  cs b a |
    b8 e d  cs b a  b e d  cs d e |
    fs8 gs a  a, b gs  a e a e'4.~ |
    \stemDown e8 e, b' e4.~  e8 e, b' a'4.~ |
    a8 fs d  \stemNeutral a b gs  a e cs' e4.~ |
    \stemDown e8 e, b' e4.~  e8 e, b' a'4.~ |
    
    \barNumberCheck 25
    a8 fs d \stemNeutral a b gs  a, cs e a4.~ |
    a8 fs d  a b gs  a4. r |
  }
  \repeat volta 2 {
    r8 a'' fs  d a fs  s4. s4 a'8 |
    g8 b a \appoggiatura { a16 } g8 fs e \appoggiatura { e16 } fs4.~ fs4 fs8 |
    \voiceOne e8 b' a  g fs e \oneVoice d a d a'4.~ |
    a8 a, e' a4.~  a8 a, e' a4.~ |
    a8 c b  a g fs  g b, e b'4.~ |
    b8 b, fs' b4.~  b8 b, fs' b4.~ |
    
    \barNumberCheck 33
    b8 d cs  b a gs  a cs, fs cs'4.~ |
    cs8 cs, gs' cs4.~  cs8 cs, gs' cs4.~ |
    cs8 b a  gs a fs  es ds cs~  cs cs cs' |
    \voiceOne cs8 a b  b gs a  a fs a  gs4\prall b8 |
    b8 gs a  a fs gs  gs es fs  fs4\prall a8 |
    a8 fs gs  gs es fs  fs ds fs es4.\prall |
    \oneVoice r2. r8 fs d b4.\prall |
    r2. r8 fs' cs a4.\prall |
    
    \barNumberCheck 41
    r2. r8 cs8 b  a gs fs |
    gs8 cs b  a gs fs  gs cs b  \stemUp a b cs |
    \stemNeutral d8 cs b  a gs fs \appoggiatura { fs16 } gs4.  r8 gs gs |
    gs8 a a  a as as  as b as  b as as |
    \stemDown as8 b b  b bs bs  bs cs bs  cs cs cs |
    % First beat, d natural cautionary accidental
    cs8 d! d  d es es  es fs es  fs gs a |
    \voiceOne gs8 a b~  b a gs \oneVoice fs cs a' cs4.~ |
    cs8 cs, gs' cs4.~  cs8 cs, gs' cs4.~ |
    
    \barNumberCheck 49
    cs8 b a  gs a fs  cs gs' b \appoggiatura { b16 } a4. |
    cs,8 gs' b \appoggiatura { b16 } a4.  cs,8 gs' b \voiceOne
      \appoggiatura { \once \slurDown b16 } a4.~ |
    a8 gs fs  fs gs es \oneVoice fs8 cs, gs' \appoggiatura { b16 } a4.~ |
    \voiceOne a8 gs b \appoggiatura { \once \slurDown b16 } a4.~  a8 fs b
      \appoggiatura { \once \slurDown b16 } a4.~ |
    a8 gs fs  fs gs es  \oneVoice fs a cs  fs a fs |
    \appoggiatura { e16 } d8 cs b  a b gs  a16( b a gs fs e
      \beamPositionsA d \voiceDown cs b a gs fs) |
    d'8 cs b  a b gs  fs4. s |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1.*3 |
    s4. \voiceFour b'4.  b4 cs8  cs b cs |
    d4. cs s2. |
    s1.*3 |
    
    \barNumberCheck 9
    s1.*3 |
    f,4. e d~ d4 f8 |
    e4. d c~ c4 e8 |
    % Fourth beat, changed duration to dotted quarter
    d4. c b~ b4. |
    s1.*2 |
    
    \barNumberCheck 17
    s1.*8 |
    
    \barNumberCheck 25
    s1.*2 |
  }
  \repeat volta 2 {
    s1.*2 |
    s8 g'' fs  e d cs s2. |
    s1.*3 |
    
    \barNumberCheck 33
    s1.*3 |
    d4. cs b~ b4 d8 |
    cs4. b a~ a4 cs8 |
    b4. a gs4.~ gs4. |
    s1.*2 |
    
    \barNumberCheck 41
    s1.*6 |
    d'4. cs s2. |
    s1. |
    
    \barNumberCheck 49
    s1. |
    s2. s4. r8 r cs |
    d4. cs s2. |
    cs,4. r cs r8 r cs |
    d4. c s2. |
    s1.*2 |
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
  \repeat volta 2 {
    s1.*8 |
    
    \barNumberCheck 9
    s2. s4. \voiceThree a~ |
    a2. b4. a~ |
    a2. s |
    s1.*3 |
    f'8 e f  e d e  d4.~ d4 f8 |
    e8 d e  d c d  c4.~ c4 e8 |
    
    \barNumberCheck 17
    d8 c d  c b c  b4.~ b4 e8 |
    e4.~e4 e8  e4.~ e4 e8 |
    d4. cs4 b8  s4. s4 e8 |
    e4.~e4 e8  e4.~ e4 e8 |
    d4. cs4 b8  s4. s4 cs8 |
    b4.~ b4 cs8  b4.~ b4 a8~ |
    a4 d8  cs4 b8 s4. s4 cs8 |
    b4.~ b4 cs8  b4.~ b4 a8~ |
    
    \barNumberCheck 25
    a4. cs4 b8  s4. s4 a8 |
    s1. |
  }
  \repeat volta 2 {
    s1. |
    s2. s4. d |
    <d e>4. e  d4.~ d4 \clef treble fs8 |
    e4.~ e4 fs8  e4.~e4 fs8 |
    <e a>4. <e fs a>  g4.~ g4 g8 |
    fs4.~ fs4 g8  fs4.~ fs4 g8 |
    
    \barNumberCheck 33
    fs4. <fs gs! b> a4.~ a4 a8 |
    gs4.~ gs4 a8  gs4.~ gs4 <es! gs>8 |
    <cs fs>4. <d fs> \clef bass cs4. s |
    s1.*3 |
    d8 cs d  cs b cs  b4.~b4 d8 |
    cs8 b cs  b a b  a4.~ a4 cs8 |
    
    \barNumberCheck 41
    b8 a b  a gs a  gs4.~ gs4 a8 |
    gs4.~gs4 a8  gs4. s4 a8 |
    b4. b cs s |
    s4. e fs fs |
    s4. fs gs gs |
    % Second beat, added d natural cautionary accidental 
    a!4. <d,! fs> <cs fs> q |
    <fs b>4. <gs b> a~ a4 a8 |
    gs4.~ gs4 a8  gs4.~ gs4 es!8 |
    
    \barNumberCheck 49
    <cs fs>4. <fs gs b> <gs b> s4 a8 |
    gs4. b8\rest b\rest a  gs4. s4 fs8 |
    fs4 b8  <fs a>4 <gs b>8  s4. s4 \clef bass a,8 |
    <gs b>4. r8 r a  <gs b>4. s4 a8 |
    fs4 b8  <fs a>4 <gs b>8  fs4. s |
    <fs b>4. <fs gs b> fs s |
    s1. |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    fs,8 s4 s4.  a'8 fs cs fs,4. |
    b4. cs fs, fs' |
    b,4. cs fs, fs' |
    b,4. cs fs fs' |
    b,4. cs fs, fs, |
    % Third beat, added cautionary natural on the e
    r4. fs' e! e' |
    r4. d, cs cs' |
    b,4. e a, a' |
    
    \barNumberCheck 9
    d,4. fs e \voiceTwo cs |
    d4. fs e cs |
    d4. fs \oneVoice e e, |
    e4. e e r |
    e4. e e e~ |
    e4. e e~ e4 e''8 |
    \voiceTwo d4. c b~ b4 d8 |
    c8 b c  b a b  a4.~ a4 c8 |
    
    \barNumberCheck 17
    b8 a b  a gs a  gs4 e8~  e4 a8 |
    gs4 e8~  e4 a8  gs4 e8~  e4 a8 |
    d,4 fs8  e4. \oneVoice a,~ a4 \voiceTwo a'8 |
    gs4 e8~  e4 a8  gs4 e8~  e4 a8 |
    d,4 fs8  e4. \oneVoice a,~ a4 \voiceTwo a'8 |
    gs4 e8~  e4 a8  gs4 e8~  e4 cs8 |
    d4 fs8  e4. \oneVoice a,~ a4 \voiceTwo a'8 |
    gs4 e8~  e4 a8  gs4 e8~  e4 cs8 |
    
    \barNumberCheck 25
    d4 fs8 e4.  \oneVoice a,~ a4 \voiceTwo cs8 |
    \oneVoice d4 fs8  e4 e,8 <a, a'>4. r |
  }
  \repeat volta 2 {
    d8 s4 s4.  d''8 a fs d4. |
    g4. a d, \voiceTwo fs |
    g4. a d,~ d4 \clef treble d'8 |
    cs4 a8~  a4 d8  cs4 a8~  a4 d8 |
    c4. b  e4.~ e4 e8 |
    ds4 b8~  b4 e8  ds4 b8~  b4 e8 |
    
    \barNumberCheck 33
    d!4. cs fs~ fs4 fs8 |
    es4 cs8~  cs4 fs8  es4 cs8~  cs4 b8 |
    a4. b \clef bass cs, \oneVoice r |
    cs4. cs cs r |
    cs4. cs cs r |
    cs4. cs cs~ cs4 cs'8 |
    \voiceTwo b4. a gs~ gs4 b8 |
    a4. gs fs~ fs4 a8 |
    
    \barNumberCheck 41
    gs4. fs  es4 cs8~  cs4 fs8 |
    es4 cs8~  cs4 fs8  es4 cs8 \oneVoice r r \voiceTwo fs |
    b,4. d cs \oneVoice r |
    \clef treble r4. \voiceTwo cs' d d |
    \oneVoice r4. \voiceTwo ds es es |
    fs4. b,! a a |
    b4. cs fs~ fs4 fs8 |
    es4 cs8~  cs4 fs8  es4 cs8~  cs4 cs8 |
    
    \barNumberCheck 49
    a4. b cs \oneVoice r8 r \voiceTwo fs |
    es4 cs8~  cs4 fs8  es4 cs8 \oneVoice r8 r \voiceTwo a8 |
    b4. cs \clef bass \oneVoice fs, r8 r \voiceTwo fs |
    es4 cs8~  cs4 fs8  es4 cs8 \oneVoice r r \voiceTwo fs |
    b,4. cs fs, \oneVoice r |
    \voiceTwo b4. cs fs, s |
    b4. cs fs, \oneVoice r |
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

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 112
    s1.*24 |
    
    \barNumberCheck 25
    s1. |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 104 s4. \tempo 4. = 96 s \tempo 4. = 88 s2. |
  }
  \repeat volta 2 {
    \tempo 4. = 112
    s1.*6 |
    
    \barNumberCheck 33
    s1.*16 |
    
    \barNumberCheck 49
    s1.*5 |
    \tag layout { s1.*2 | }
    \tag midi {
      \alternative {
        {
          s1. |
          \tempo 4. = 104 s4. \tempo 4. = 96 s \tempo 4. = 88 s2. |
        }
        {
          s2. s4. \tempo 4. = 100 s |
          \tempo 4. = 88 s4. \tempo 4. = 76 s \tempo 4. = 40 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1.*3 \break
  \grace { s16 } s1.*3 \break
  s1.*3 \break
  s1.*3 \break
  s1.*3 \break
  s1.*3 \pageBreak
  
  % page 2
  s1.*3 \break
  s1.*3 \break
  s1.*4 \break
  s1.*3 \break
  s1.*3 \break
  s1.*3 \pageBreak
  
  % page 3
  s1.*3 \break
  s1.*3 \break
  s1.*3 \break
  s1.*3 \break
  s1.*3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
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
    \new Staff = "upper" << \rightHand \tempi >>
    \new Staff = "lower" << \leftHand \tempi >>
  >>
  \midi {}
}
