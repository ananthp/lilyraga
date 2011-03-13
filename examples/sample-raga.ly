%% Short example of transcribing a carnatic raga
%% https://github.com/ananthp/lilyraga
%% 
\version "2.12.2"
\include "carnatic/melam/15_mayamalavagowla.ly"


ragam = \relative sa' {
  sa8 ri ga ma pa dha ni sa | sa ni dha pa ma ga ri sa
  
}

\score {
  \new Staff \with {
    midiInstrument = "flute"
  } \ragam
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
