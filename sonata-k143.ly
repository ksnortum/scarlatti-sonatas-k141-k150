%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in C major"
  opus = "K.143"
  source = "https://s9.imslp.org/files/imglnks/usimg/0/02/IMSLP777264-PMLP473124-DScarlatti-K143-facsimile.pdf"
}

global = {
  \time 3/8
  \key c \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    c'''16 g e c g[ e] |
    s4. |
    r8 g'8.\trill f32 g |
    gs16 a f d c b |
    b16[ c] g'8.\trill f32 g |
    gs16 a f d c b |
    c8\trill d\trill e\trill |
    f8.\trill g32 a  g[ f e d] |
    
    \barNumberCheck 9
    c8\trill d\trill e\trill |
    f8.\trill g32 a  g[ f e d] |
    c8\trill d\trill e\trill |
    f8.\trill g32 a  g[ f e d] |
    e16 d c b c d |
    e16 d c b c8 |
    % Measures 15 and 17 contain a difficulty. They have too many beats in
    % the measure as written. A decision was made to shorten the last three
    % notes of the measure by one half.
    r8 e,8.\trill d32 e64 fs |
    g16 a b c cs d |
    
    \barNumberCheck 17
    r8 c8.\trill b32 c64 d |
    e16 f fs g gs a |
    r16 a f d c b |
    c16 d32 e f g a b c16[ g] |
    \appoggiatura { g32 } f8 e8.\trill d32 e |
    d16[ d'] e,8.\trill d32 e |
    d16[ c'] c,8.\trill b32 c |
    b16[ d'] e,8.\trill d32 e |
    
    \barNumberCheck 25
    d16[ c'] c,8.\trill b32 c |
    b16[ g'] d b g  d |
    s4.*2 |
    R4. |
    r16 c' c' bf af g |
    \voiceOne af4 g8 |
    \oneVoice r16 c, c' bf af g |
    
    \barNumberCheck 33
    \voiceOne af4 g8 |
    \oneVoice r16 c, c' bf a! g |
    fs16[ ef] d8. cs16 |
    d16 d' cs bf a g |
    fs16[ ef] \appoggiatura { ef32 } d8. cs16 |
    d16 d' cs bf a g |
    fs16[ e!] d8. c!16 |
    b8 <g' b> a, |
    
    \barNumberCheck 41
    <fs' a>8 g, <e' g> |
    fs,8 <d' fs> e, |
    <c' e>8 d, <b' d> |
    c,8 <a' c> b, |
    <g' b>8 <fs a>16 g fs e |
    d16 <b' d> <a c> <g b> <fs a> <a c> |
    b8 <g' b> a, |
    <fs' a>8 g, <e' g> |
    
    \barNumberCheck 49
    fs,8 <d' fs> e, |
    <c' e>8 d, <b' d> |
    c,8 <a' c> b, |
    <g' b>8 <fs a>16 g fs e |
    d16 <b' d> <a c> <g b> a c |
    b8 g'8.\trill a16 |
    a,16 e' d cs b a |
    b8 g'8.\trill a16 |
    
    \barNumberCheck 57
    a,16 c b a g fs |
    g8 d'8.\trill e16 |
    e,16 <c' e> <b d> <a c> <g b> <fs a> |
    <g b>8 d'8.\trill e16 |
    e,16 <e c'> <d b'> <c a'> <b g'> <a fs'> |
    <g g'>4. |
  }
  \repeat volta 2 {
    r16 <f'' af> <ef g> <d f> <c ef> <b d> |
    <d f>8 <c ef> <b d> |
    
    \barNumberCheck 65
    r16 <f' af> <ef g> <d f> <c ef> <b d> |
    <d f>8 <c ef> <b d> |
    r16 <g' bf> <f a!> <e! g> <d f> <cs e> |
    <e g>8 <d f> <cs e> |
    r16 <g' bf> <f a> <e g> <d f> <cs e> |
    <e g>8 <d f> <cs e> |
    r16 <g' bf> <f a> <e g> <d f> <cs e> |
    f16 d d' c b! a |
    
    \barNumberCheck 73
    gs16 e f d' b a |
    gs16 e f d' b a |
    gs16 f e8. <d d'>16 |
    <c c'>16 <b b'> <a a'>8. <d d'>16 |
    <c c'>16 <b b'> <a a'>8. <d d'>16 |
    <c c'>16 <b b'> <a a'>8. <g! g'!>16 |
    <fs fs'>16 <e e'> <d d'>8. <c' c'>16 |
    <b b'>16 <a a'> <g g'>8. <c c'>16 |
    
    \barNumberCheck 81
    <b b'>16 <a a'> <g g'>8. <c c'>16 |
    <b b'>16 <a a'> <g g'>8. <f! f'!>16 |
    <e e'>16 <d d'> <c c'>8. <g' g'>16 |
    <a a'>16 <g g'> <f f'> <e e'> <d d'> <c c'> |
    <b b'>16 <a a'> <g g'> <f f'> <e e'> <d d'> |
    e8 <c'' e> f,, |
    <d'' f>8 g,, <e'' g> |
    a,,8 <f'' a> b,, |
    
    \barNumberCheck 89
    <g'' b>8 c,, <a'' c> |
    <b, b'>16 <a a'> <g g'> <f f'> <e e'> <d d'> |
    e,8 <c'' e> f,, |
    <d'' f>8 g,, <e'' g> |
    a,,8 <f'' a> b,, |
    <g'' b>8 c,, <a'' c> |
    b16 a g f e d |
    e16 f g b, c e |
    
    \barNumberCheck 97
    d16 f e d c b |
    c8\noBeam <ef c'>16 <d bf'> <c a'> <bf g'>~ |
    q8 <a fs'>16 <g ef'> <fs d'> <ef c'>~ |
    q8 <d b'>16 <c af'> <b g'> <af f'>~ |
    q8 <g e'>16 <f df'> <e c'> <g bf> |
    a!16 c b! d! c e |
    d16 f e d c b |
    \tuplet 11/16 { c64( d e f g a b c d e f) } g16[ a] |
    
    \barNumberCheck 105
    g16 f e d c b |
    c8 g'8.\trill a16 |
    a,16 <f' a> <e g> <d f> <c e> <b d> |
    \voiceOne e16[ d] \oneVoice e8. f16 |
    a,16 <a f'> <g e'> <f d'> <e c'> <d b'> |
    \voiceOne c'8 s4 |
    \oneVoice a,16 <f' a> <e g> <d f> <c e> <b d> |
    \voiceOne e16[ ds] \oneVoice e8. f16 |
    
    \barNumberCheck 113
    \clef bass a,16 <a f'> <g e'> <f d'> <e c'> <d b'> |
    <c c'>4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*24 |
    
    \barNumberCheck 25
    s4.*6 |
    \voiceFour af''16 c, b!4 |
    s4. |
    
    \barNumberCheck 33
    af'16 c, b!4 |
    s4.*7 |
    
    \barNumberCheck 41
    s4.*8 |
    
    \barNumberCheck 49
    s4.*4 |
    s4 fs8 |
    s4.*3 |
    
    \barNumberCheck 57
    s4.*6 |
  }
  \repeat volta 2 {
    s4.*2 |
    
    \barNumberCheck 65
    s4.*40 |
    
    \barNumberCheck 105
    s4.*3 |
    c'8 s4 |
    s4. |
    c,8 g'8. a16 |
    s4. |
    c,8 s4 |
    
    \barNumberCheck 113
    s4.*2 |
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
    s4.*56 |
    
    \barNumberCheck 57
    s4.*6 |
  }
  \repeat volta 2 {
    s4.*2 |
    
    \barNumberCheck 65
    s4.*8 |
    
    \barNumberCheck 73
    s4.*2 |
    \voiceThree b'8 s4 |
    s4.*2 |
    \clef bass e,8 s4 |
    s4.*2 |
    
    \barNumberCheck 81
    s4. |
    d8 s4 |
    c8 s4 |
    s4.*5 |
    
    \barNumberCheck 89
    s4.*7 |
    c8 s4 |
    
    \barNumberCheck 97
    f8 e d |
    s4.*7 |
    
    \barNumberCheck 105
    f8 e d |
    c4. |
    s4.*5 |
    c,8. d16 e8 |
    
    \barNumberCheck 113
    s4.*2 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    <c, g' c>8 s4 |
    c''16 g e c g[ e] |
    c4 \clef treble e''8 |
    f4 g8 |
    a4 e8 |
    f4 g8 |
    e8 f g |
    a8 b g |
    
    \barNumberCheck 9
    e8 f g |
    a8 b g |
    e8 f g |
    a8 b g |
    c16 g e c \clef bass g e |
    c16 g e c r8 |
    c''4 c8 |
    <b d>4 q8 |
    
    \barNumberCheck 17
    <a c e>4 q8 |
    <g c e>4 q8 |
    <f b d>4 q8 |
    <e g c>4 q8 |
    <d f b>8 c' c, |
    g'8 c c, |
    g'8 c, c, |
    g'8 c' c, |
    
    \barNumberCheck 25
    g'8 c, c, |
    g'8 s4 |
    b'16 g d b g d |
    g,4.\fermata |
    \clef treble r16 af''' g f ef d |
    ef8.\trill d16 c8 |
    f8 g16 f ef d |
    ef8.\trill d16 c8 |
    
    \barNumberCheck 33
    f8 g16 f ef d |
    ef8.\trill d16 c8 |
    d8. c'16 bf a |
    bf4 ef,8 |
    d8. c'!16 bf a |
    bf4 ef,8 |
    d8. c'!16 b! a |
    \clef bass g8 g,, fs'' |
    
    \barNumberCheck 41
    fs,,8 e'' e,, |
    d''8 d,, c'' |
    c,,8 b'' b,, |
    a''8 a,, g'' |
    g,,8 d''8. c16 |
    <b g'>8 c d |
    g'8 g,, fs'' |
    fs,,8 e'' e,, |
    
    \barNumberCheck 49
    d''8 d,, c'' |
    c,,8 b'' b,, |
    a''8 a,, g'' |
    g,,8 d''8. c16 |
    <b g'>8 c d |
    g,4 <b' g'>8 |
    <c g'>4 <d fs>8 |
    <g, g'>4 <b g'>8 |
    
    \barNumberCheck 57
    <c e>4 d8 |
    g,4 b,8 |
    c8 d d, |
    g4 b8 |
    c8 d d, |
    g4. |
  }
  \repeat volta 2 {
    R4. |
    \clef treble r16 af'' g f ef d |
    
    \barNumberCheck 65
    \clef bass g,8 g,4 |
    \clef treble r16 af'' g f ef d |
    \clef bass g,8 a! a, |
    \clef treble r16 bf'' a g f e |
    \clef bass a,8 a,4 |
    \clef treble r16 bf'' a g f e |
    % This measure is missing in the source, but is in an urtext
    \clef bass g,8 a a, |
    \clef treble d'8. e16 f8 |
    
    \barNumberCheck 73
    e8 d d' |
    <e, b'>8 <d a'> d' |
    \voiceTwo e,8. \clef bass d16 c b |
    \oneVoice a8. <d f>16 <c e> <b d> |
    <a e'>8. <d f>16 <c e> <b d> |
    \voiceTwo a8. b16 c a |
    d,8. c'16 b a |
    <g d'>8. <c e>16 <b d> <a c> |
    
    \barNumberCheck 81
    <g d'>8. <c e>16 <b d> <a c> |
    g8. a16 b g |
    c,8. d16 e c |
    \oneVoice f,4. |
    g4. |
    c,8 c' d, |
    d'8 e, e' |
    f,8 f' g, |
    
    \barNumberCheck 89
    g'8 a, a' |
    <g, g'>8 a b |
    c,8 c' d, |
    d'8 e, e' |
    f,8 f' g, |
    g'8 a, a' |
    <g, g'>8 a b |
    \voiceTwo c8. d16 e8 |
    
    \barNumberCheck 97
    f8 g4 |
    \oneVoice c,4. |
    d,4. |
    g4. |
    c,4. |
    f8 f' e |
    f8 g g, |
    c4 <e c'>8 |
    
    \barNumberCheck 105
    \voiceTwo f8 g4 |
    c,8. d16 e8 |
    \oneVoice \stemDown f8 g g, |
    c8. d16 e8 |
    f8 g g, |
    c8. d16 e8 |
    \stemNeutral f,8 g4 |
    \voiceTwo c,8 s4 |
    
    \barNumberCheck 113
    \oneVoice f8 g g, |
    c4. |
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
    \tempo "Allegro" 4. = 60
    s4.*24 |
    
    \barNumberCheck 25
    s4.* 3 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 48 s4. |
    \tempo 4. = 60 
    s4.*4 |
    
    \barNumberCheck 33
    s4.*24 |
    
    \barNumberCheck 57
    s4.*4 |
    s8 \tempo 4. = 56 s \tempo 4. = 52 s |
    \tempo 4. = 48 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 60
    s4.*2 |
    
    \barNumberCheck 65
    s4.*48 |
    
    \barNumberCheck 113
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 56 s \tempo 4. = 52 s |
          \tempo 4. = 48 s4. |
        }
        {
          \tempo 4. = 54 s8 \tempo 4. = 48 s \tempo 4. = 42 s |
          \tempo 4. = 30 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*6 \break
  s4.*6 \break
  s4.*5 \break
  s4.*5 \break
  s4.*6 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*6 \break
  s4.*8 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*5 \break
  s4.*5 \break
  s4.*5 \break
  s4.*5 \break
  s4.*5 \pageBreak
  
  % page 4
  s4.*6 \break
  s4.*5 \break
  s4.*5 \break
  s4.*5 \break
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
