
%{

This lilypond file defines Note/Pitch Names for a Raga in Carnatic Music.
This file can be 'include'd in a lilypond score to notate carnatic music compositions as standard western scores.

Source and Documentation: https://github.com/lilyraga

Copyright (c) 2010 ananth
Licensed under GNU GPL Version 3 or later. <http://www.gnu.org/licenses/>
-----------------------------------------

	30. Naganandini
      
	section 1: All 12 Swara-stanas (Tones)
		raa rii ruu = Suddha, Chatusruti, Shatsruti Rishabams
		gaa gii guu = su, sadha, antara Ga
		etc.
     	
	section 2: Swara-stanas belonging to Ragam Naganandini
		sa ri ga ma etc. (Scale Tones)

-----------------------------------------


%}

pitchnamesNaganandini = #`(
(saa . , (ly:make-pitch -1 0 NATURAL))
(raa . , (ly:make-pitch -1 1 FLAT))
(rii . , (ly:make-pitch -1 1 NATURAL))
(ruu . , (ly:make-pitch -1 1 SHARP))
(gaa . , (ly:make-pitch -1 2 DOUBLE-FLAT))
(gii . , (ly:make-pitch -1 2 FLAT))
(guu . , (ly:make-pitch -1 2 NATURAL))
(maa . , (ly:make-pitch -1 3 NATURAL))
(mii . , (ly:make-pitch -1 3 SHARP))
(paa . , (ly:make-pitch -1 4 NATURAL))
(dhaa . , (ly:make-pitch -1 5 FLAT))
(dhii . , (ly:make-pitch -1 5 NATURAL))
(dhuu . , (ly:make-pitch -1 5 SHARP))
(naa . , (ly:make-pitch -1 6 DOUBLE-FLAT))
(nii . , (ly:make-pitch -1 6 FLAT))
(nuu . , (ly:make-pitch -1 6 NATURAL))

(sa . , (ly:make-pitch -1 0 NATURAL))
(ri . , (ly:make-pitch -1 1 NATURAL))
(ga . , (ly:make-pitch -1 2 NATURAL))
(ma . , (ly:make-pitch -1 3 NATURAL))
(pa . , (ly:make-pitch -1 4 NATURAL))
(dha . , (ly:make-pitch -1 5 SHARP))
(ni . , (ly:make-pitch -1 6 NATURAL))

)

pitchnames = \pitchnamesNaganandini

\version "2.12.0"


#(ly:parser-set-note-names parser pitchnames)
