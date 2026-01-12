%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\language "english"

#(set-global-staff-size 18)

\header { 
  composer = "Domenico Scarlatti (1685-1757)"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = \markup { 
    \center-column { \concat {
      "Copyright © 2026 " \with-url #"https://github.com/ksnortum" 
      "Knute Snortum." " Licensed under " 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "CC BY-SA 4.0"
    } }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = #5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = #10
    
  #(set-paper-size "letter")

  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \override Slur.details.free-head-distance = #0.75
    \override PhrasingSlur.details.free-head-distance = #0.75
    \override Stem.details.beamed-lengths = #'(3.5 3.9)
  }
  \context {
    \Voice
    \override Tie.minimum-length = #2.5
  }
  % Helps keep dynamics from intersecting the span bar line.
  \context { 
    \Dynamics
    \consists Pure_from_neighbor_engraver
    \remove Bar_engraver
  }
}

\midi {
  % Dynamics are mostly in the staff, not the voice
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }        
  \context {
    \Score
    midiMinimumVolume = #0.01
    midiMaximumVolume = #0.99
  }
}

%
% Definitions
%

addArticulation =
#(define-music-function (articul music) (symbol? ly:music?)
   (for-some-music
     (lambda (m)
       (if (or (music-is-of-type? m 'note-event)
               (music-is-of-type? m 'event-chord))
           (begin
             (ly:music-set-property!
               m
               'articulations
               (cons
                 (make-music 'ArticulationEvent 'articulation-type articul)
                 (ly:music-property m 'articulations)))
             #t)
           #f))
     music)
   music)
%% Usage:
% \addArticulation #'staccato { c' d' <e' f'> }

addStaccato =
#(define-music-function (music) (ly:music?)
  (addArticulation 'staccato music)) 
%% Usage:
% \addStaccato { c' d' <e' f'> }

addTenuto =
#(define-music-function (music) (ly:music?)
  (addArticulation 'tenuto music)) 

#(define expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))
% Usage: #(expect-warning-times 4 "omitting tuplet bracket")

startParenthesis = {
  \once \override Parentheses.stencils = 
    #(lambda (grob)
      (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
       (list (car par-list) point-stencil )))
}
endParenthesis = {
  \once \override Parentheses.stencils = 
    #(lambda (grob)
      (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
       (list point-stencil (cadr par-list))))
} 
%%%%%% Example:
% {
%   \override Parentheses.font-size = #5
%   \startParenthesis <c \parenthesize c'>
%   d' e' f'
%   \endParenthesis \parenthesize g'
% }

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd =  \sustainOn
su =  \sustainOff
sud = \sustainOff\sustainOn

voiceUp = {
  \change Staff = "upper"
  \voiceFour 
}
voiceDown = {
  \change Staff = "lower"
  \voiceThree 
}

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

% Offset slur positions
osp =
#(define-music-function (offsets) (number-pair?)
  #{
     \once \override Slur.control-points =
       #(lambda (grob)
          (match-let ((((_ . y1) _ _ (_ . y2))
                       (ly:slur::calc-control-points grob))
                      ((off1 . off2) offsets))
            (set! (ly:grob-property grob 'positions)
                  (cons (+ y1 off1) (+ y2 off2)))
            (ly:slur::calc-control-points grob)))
  #})
%% Usage:
%
% \relative c'' {
%   \osp #'(0 . 2)
%   c4( c, d2)
% }

beamQuarterNotes.22 = {
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = 1,1,1,1
}

beamEighthNotes.38 = {
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = 1,1,1
}

revertBeaming = {
  \unset Staff.beamExceptions
  \unset Staff.baseMoment
  \unset Staff.beatStructure
}

insideSlur = \tweak avoid-slur #'inside \etc

clefAfterBarLine = 
\once \override Score.BreakAlignment.break-align-orders = 
    #(make-vector 3 '(staff-bar clef key-signature))

%
% Markup
%

trillNatural = \markup \teeny \concat { " " \natural }
trillFlat = \markup \teeny \concat { " " \flat }
md = \markup \italic \halign #-0.2 m.d.
ms = \markup \italic \halign #-0.4 m.s.
pocoRit = \markup \large \italic "poco rit."
pocoRall = \markup \large \italic "poco rall."
aTempo = \markup \large \italic "a tempo"
