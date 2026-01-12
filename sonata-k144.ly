%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.144"
  source = "https://ks15.imslp.org/files/imglnks/usimg/e/ec/IMSLP303212-PMLP473130-Scarlatti_Sonate_K.144.pdf"
}

global = {
  \time 2/2
  \key g \major
}

rightHand = \relative {
  \global
  \beamQuarterNotes.22
  \partial 4 d''4 |
  \repeat volta 2 {
    g4 g g \appoggiatura { a32 } g16 fs e8 |
    d2.\prall c4\prall |
    b16 c d8 d d  ds[ e \appoggiatura { d32 } c8 a] |
    fs2\prall r8 d' \appoggiatura { c32 } b8 a16 g |
    gs16 a a gs  gs8 a  r e' \appoggiatura { d32 } c8 b16 a |
    as16 b b as  as8 b  r b' \appoggiatura { a!32 } g16 fs e ds |
    e8 b' \appoggiatura { a32 } g16 fs e d  cs8 g'
      \appoggiatura { fs32 } e16 d cs b |
    a2\prall r8 a' \appoggiatura { g32 } f16 e d cs |
    
    \barNumberCheck 9
    d8 a' \appoggiatura { g32 } f16 e d c!  b8 f'
      \appoggiatura { e32 } d16 c b a |
    g2~\prall g16 bf cs e  g bf g8~ |
    g16 e g8~  g16 bf g8~  g16 e g8~  g16 bf g e |
    cs2~\prall cs16 fs? e a  g fs e d |
    e32 d cs16 g'8~  g16 fs fs e  e d d cs  cs b b a |
    a16 gs' gs a~  a g g fs  fs e e d  d cs cs b |
    % This measure presents a problem. As written the third beat is
    % d8. b32 cs32 d32, but this does not add up to a quarter note.
    % A decision was made to "shorten" the dot of the eight note.
    as'16 b a g  fs e b e  d8~ d32 b cs d cs4\prall |
    % Added tuplet numbers to the next two measures
    \omit TupletBracket
    fs,16 g as b  ds e \appoggiatura { fs32 } g16 fs32 e
      d8 \tuplet 5/4 { e32( d cs d e) } e8.\prall d16 |
    
    \barNumberCheck 17
    fs,16 g as b  ds e \appoggiatura { fs32 } g16 fs32 e
      d8 \tuplet 7/4 { e32( d cs d e d e) } e8.\prall d16 |
    \alternative {
      { d16 d' a fs  d a fs d  s4 r8 d' | }
      { d16 d' a fs  d a fs d  s4 r8 a' | }
    }
  }
  \section
  \repeat volta 2 {
    d4 d \appoggiatura { e32 } d4 cs8 b |
    a2~ a8 e' \appoggiatura { d32 } c!8 b16 a |
    gs'16 b f8~  f16 f e d  d d c b  f' f e d |
    d16 d c b  b' a gs fs!  gs f f e  e d d cs |
    cs16 d d ds  ds e e fs!  fs g \appoggiatura { a32 } g16 fs  e d c b |
    
    \barNumberCheck 25
    c'16 b b a  a g fs e  e ds fs e  ds c! b a |
    a16 gs gs a  a b b c  cs d d8~  d32 d e f e16 d |
    bf'16 g e cs  bf g f e  gs a a8~  a16 a' a bf! |
    c!16 fs,! fs8~  fs16 g fs g \appoggiatura { bf32} af16 g f ef  ef d d c |
    \appoggiatura { d32 } c16 b! d c  b a g f  f4\prall e4~ |
    e8 e' \appoggiatura { d32 } c16 b32 a g16 fs!32 e  d16 fs a c  cs8 d~ |
    d8 d \appoggiatura { c!32 } b16 a32 g fs16 e32 d  ds'16 e c b  b8 c~ |
    c16 e c b  b8 c~  c16 a' c, b  c c' \appoggiatura { b32 } a16 g |
    
    \barNumberCheck 33
    g16 fs a g  fs e d c  as b ds e  gs a! \appoggiatura { d!32 } c16 b32 a |
    g!16. a32( g fs g a)  a8.\prall g16  b, c ds e
      \stemDown gs, a \appoggiatura { d32 } c16 b32 a |
    \alternative {
      { 
        \stemNeutral g8 \tuplet 7/4 { a32( g fs g a g a) } a8.\prall g16
          g d b g  r8 g' | 
      }
      { 
        \stemNeutral g8 \tuplet 7/4 { a32( g fs g a g a) } a8.\prall g16
        g d b g  s4 | 
      }
    }
  }
  \fine
}

leftHand = \relative {
  \global
  \clef bass
  \partial 4 r4 |
  \repeat volta 2 {
    r2 r4 \clef treble g' |
    g4 g fs d |
    g4 b, c d |
    d4 c <b d> q |
    <c e>4 q <d f> q |
    <g,! g'!>4 g' g g |
    g4 g g g |
    g8 g f\prall e  f4 f |
    
    \barNumberCheck 9
    f4 f f f |
    f8 f e\prall d  e4 <e g> |
    <cs e g>4 <bf d g> <a cs e g> <g bf d g> |
    <a cs e g>4 q q q |
    \clef bass <g cs e>4 q <g a cs e> q |
    <fs a d>4 q q q |
    <g d' e>4 q <a d fs> <a e'> |
    <b d>4 <g d'! e> <a! d fs> <a cs e> |
    
    \barNumberCheck 17
    % Added cautionary accidentals
    <b d>4 <g d'! e> <a! d fs> <a cs e g> |
    \alternative {
      { d,4 s  a'16[ fs d a]  d,8 r | }
      { d'4 s  a'16[ fs d a]  d,8 r | }
    }
  }
  \section
  \repeat volta 2 {
    r4 <d'' fs> q q |
    <cs e>4 q <c e> q |
    <b d>4 q <a d f> q |
    <gs d' e>4 q q q |
    <g! e'> <g b e> q q |
    
    \barNumberCheck 25
    <fs a e'>4 q <b e fs> q |
    <b d! f>4 <a d f> <gs d' e> q |
    <g! cs e>4 q <f a e'> <f a d> |
    <ef g d'>4 <ef g c!> <d f af c> q |
    <g d' f>4 q <c, g' c> q |
    c4 c' c <b d> |
    q4 q <b c> <a c> |
    <g c e>4 q <fs c' d> <e g c> |
    
    \barNumberCheck 33
    <d a' c d>4 q <g d'> <c, c'> |
    <d g b>4 <d a' d> <e g> <c c'> |
    \alternative {
      { <d g b>4 d, g g8 r | }
      { <d' g b>4 d, g g8 r | }
    }
  }
  \fine
}

tempi = {
  \tempo "Cantabile" 4 = 80
  \partial 4 s4 |
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s1*16 |
    
    \barNumberCheck 17
    s1 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  \repeat volta 2 {
    s1*5 |
    
    \barNumberCheck 25
    s1*8 |
    
    \barNumberCheck 33
    s1*2 |
    \alternative {
      { s1 | }
      { \tempo 4 = 69 s4 \tempo 4 = 60 s \tempo 4 = 54 s \tempo 4 = 30 s | }
    }
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4 s1*4 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \pageBreak
  
  % page 2
  s1*3 \break
  s1*2 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
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
