%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in A minor"
  opus = "K.149"
  source = "https://ks15.imslp.org/files/imglnks/usimg/7/73/IMSLP626928-PMLP475157-Sonata_K._149_(as_L._93).pdf"
}

global = {
  \time 4/4
  \key a \minor
}

rightHand = \relative {
  \repeat volta 2 {
    \global
    \partial 8 e''8-. |
    a16( e f d  e c d b)  c8.(\prall b16 a8-.) c-. |
    b16( f' e d  c b a gs  a4) r8 c-. |
    \acciaccatura { d8 } c16( b) b8-. r d-.
      \acciaccatura { e8 } d16( c) c8-. r e-. |
    a16( f) f8-. r d-.  g16( e) e8-. r c-. |
    \osp #'(-1 . -1) c16( a' g f  e d c b  c4) r8 g'-. |
    g16 g g g  g g g g  g( f e d  cs8-.) a'-. |
    a16 a a a  a a a a  a( g fs e  ds8-.) b'-. |
    b16 b b b  b b b b  b( a g fs  e d! c b) |
    
    \barNumberCheck 9
    r16 c'( b a  g fs e ds  e4) r8 g-. |
    g16( fs) fs8-. r c-.  c16( b) b8-. r b-. |
    ds16( e) e8-. r e-.  as16( b) b8-. r b-. |
    b16 b b b  b b b b  b( a! g fs  e d! c b) |
    r16 c'( b a  g fs e ds) \appoggiatura { d'!16 } c2 |
    b16( e, a fs  e8-.) ds-. \appoggiatura { d'!16 } c2 |
    b16( e, a fs  e8-.) ds-. \osp #'(0 . 2.5) e16( b c a  g8-.) fs-. |
    \alternative {
      { 
        \time 2/4
        e4-> r8\fermata 
      }
      {  
        \time 4/4
        e4 r8 e'-.
      }
    }
  } 
  \section
  \repeat volta 2 {
    \partial 2 e16( b) b8-. r c-. |
    
    \barNumberCheck 17
    \acciaccatura { d8 } c16( b) b8-. r e-.  e16( b) b8-. r c-. |
    \acciaccatura { d8 } c16( b) b8-. r b-.  b16( c) c8-. r c-. |
    cs16( d) d8-. r a'-.  a16( g) g( f)  f( e) e( d |
    e16 g) g8-. r g-.  g16 g g g  g g g g |
    g16 g g g  g g g g  g(a g f  e d c b |
    c4) r8 <c c'>(  <bf bf'>-.) <a a'>4 <g g'>8-. |
    q8( <f f'>) r <d' d'>(  <c c'>-.) <b! b'!>4 <a a'>8-. |
    q8( <gs gs'>) r b-.  b16( c) c8-. r ds-. |
    
    \barNumberCheck 25
    ds16( e) e8-. r b-.  b16( c) c8-. r ds,-. |
    ds16( e) e8-. r e'-.^\aTempo  e16 e e e  e e e e |
    e16( d! c b  a g f e)  r f'( e d  c b a gs) |
    \appoggiatura { g'!16 } f2 e16( a, d b  a8-.) gs-. |
    \appoggiatura { g'!16 } f2 e16( a, d b  a8-.) gs-. |
    a'16( e f d  c8-.) b-.  a'16( e f d  c8-.) b-. |
    a'16( e f d  <c e a>8-.) <b d gs>-.
    \alternative {
      { <a c e a>4-> r8 e'-. }
      { <a, c e a>4-> r\fermata }
    }
  }
  \fine
}

leftHand = \relative {
  \repeat volta 2 {
    \clef bass
    \global
    \partial 8 r8 |
    a4 r8 gs-.  a([ b] c-.) a-. |
    d8([ d,] e e,)  r8 a'( c-.) a-. |
    r8 e( gs-.) e-.  r a( c-.) a-. |
    \override Parentheses.font-size = #-3
    r8 \startParenthesis <f \parenthesize g!>8-.( <f g>-. \endParenthesis
      <f \parenthesize g>-.)  r8 \startParenthesis <e \parenthesize g>-.(
      <e g>-. \endParenthesis <e \parenthesize g>-.) |
    r8 \stemDown f( g g,)  r c'( e-.) c-. |
    r8 g8-. bf-. g-.  a( a,) a'4 |
    r8 a-. c-. a-.  b!( b,) b'4 |
    r8 e-. ds-. b-.  e( e,) r g-. |
    
    \barNumberCheck 9
    a8-.[ a]( b b,)  r8 e( g-.) e-. |
    r8 ds( fs-.) ds-.  r g( b-.) g-. |
    \stemNeutral c4( c, b b') |
    r8 e-. ds-. b-.  e( e,) r g-. |
    a8-.[ a]( b b,)  r a'( c ds |
    e8[ a,] b-.) b,-.  r a'( c ds |
    e8[ a,] b-.) b,-.  c([ a] b-.) b, |
    \alternative {
      { 
        \time 2/4
        e4-> r8\fermata 
      }
      {  
        \time 4/4
        e8-. e'-. e,-. r
      }
    }
  }
  \section
  \repeat volta 2 {
    \partial 2 r8 e''-- gs,-. a-. |
    
    \barNumberCheck 17
    r8 e-- e,-. e'-.  r e'-- gs,-. a-. |
    r8 e-- e,-. e'-.  r <e c'>-.( q-. q-.) |
    r8 <f d'>-.( q-. q-.)  r <g d'>-.( q-. q-.) |
    r8 << { e'-. d4 } \\ { c8-. b( g) } >>  r <c e>-. <b d>-. <g d'>-. |
    <c e>8-. q-. <b d>-. <g d'>-.  \stemDown e( f g g,) |
    r8 c'( e-.) c-.  r d( cs-.) a-. |
    r8 d( f-.) d-.  r e( ds-.) b-. |
    r8 e( e,-.) e'-.  a,4( fs |
    
    \barNumberCheck 25
    gs4 e <a c> <fs a> |
    \stemNeutral e4 e,)  r8 a'-. gs-. e-. |
    a8( a,) r c'-.  d-.[ d,]( e e,) |
    r8 d'( f gs  a[ d,] e-.) e,-. |
    r8 d'( f gs  a[ d,] e-.) e,-. |
    r8 d'( e-.) d-.  r d( e-.) d-. |
    c8-. d-. e-. e,-.
    \alternative {
      { a4-> r }
      { a4-> r\fermata }
    }
  } 
  \fine
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 8 s8\mf |
    s1 |
    s2.. s8\p |
    s1*2 |
    s8.-\tweak Y-offset #-1.5 \< s16\! s4-\tweak Y-offset #-1.5 \>
      s8 s4\mf\> s8\p |
    s2\< s4\mf\> s8\! s\p |
    s2\< s\mf |
    s2\cresc s\f |
    
    \barNumberCheck 9
    s2 s8 s4\> s8\p |
    s1 |
    s2\cresc s-\tweak Y-offset #0 \mf |
    s2\cresc s\f |
    s2 \tag layout { s\sf } \tag midi { s8\ff s4.\f } |
    s2 \tag layout { s\sf } \tag midi { s8\ff s4.\f } |
    s1 |
    \alternative {
      { 
        \time 2/4
        s4. 
      }
      {  
        \time 4/4
        s4. s8\mf
      }
    }
  }
  \repeat volta 2 {
    \partial 2 s2 |
    
    \barNumberCheck 17
    s4. s8\p s2 |
    s1 |
    s4. s8\> s4.. s16\! |
    s2 s-\tweak Y-offset #-1.5 \cresc |
    s2 s\mf\> |
    s8\! s4-\tweak Y-offset #1 \> s8\f s2 |
    s1 |
    s4. s8-\tweak Y-offset #0.5 \p s4 s\cresc |
    
    \barNumberCheck 25
    s4. s8^\pocoRall s2 |
    s4.\mf s8\p s2\cresc |
    s1\f |
    \tag layout { s1\sf } \tag midi { s8\ff s2..\f } |
    \tag layout { s1\sf } \tag midi { s8\ff s2..\f } |
    s1 |
    s2
    \alternative {
      { s2 }
      { s2 }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 108
    \partial 8 s8 |
    s1*8 |
    
    \barNumberCheck 9
    s1*7 |
    \alternative {
      { 
        \time 2/4
        \set Score.tempoHideNote = ##t
        s4 \tempo 4 = 40 s8
      }
      { 
        \time 4/4
        s2
      }
    }
  }
  \repeat volta 2 {
    \partial 2 s2 |
    
    \barNumberCheck 17
    s1*8 |
    
    \barNumberCheck 25
    s4. \tempo 4 = 100 s8 s4 \tempo 4 = 92 s |
    \tempo 4 = 84 s4. \tempo 4 = 108 s8 s2 |
    s1*4 |
    \tag layout {
      s2
      \alternative {
        { s2 }
        { s2 }
      }
    }
    \tag midi {
      \alternative {
        {
          \tempo 4 = 100 s4 \tempo 4 = 92 s \tempo 4 = 84 s4.
            \tempo 4 = 108 s8 |
        }
        {
          \tempo 4 = 96 s4 \tempo 4 = 84 s \tempo 4 = 40 s2 |
        }
      }
    }
  } 
}

forceBreaks = {
  % page 1
  s8 s1*2 \break
  \grace { s8 } s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*2 \break
  s1*2 s4. s2 \pageBreak
  
  % page 2
  s2 s1*2 \break
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
