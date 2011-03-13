
%{

This lilypond file defines Note/Pitch Names for a Raga in Carnatic Music.
This file can be '\include'd in a lilypond score to notate carnatic music compositions as standard western scores.

Source and Documentation: https://github.com/lilyraga

Copyright (c) 2010 ananth
Licensed under GNU GPL Version 3 or later. <http://www.gnu.org/licenses/>
-----------------------------------------

	Mela Ragam Number: 68
	Ragam		 : JyotiSwarupini

	Two groups of note/pitch names are defined here. (Both can be used simultaneously)

	Swara Stanams in this Ragam. (Scale Tones)
	------------------------------------------

		sa ri ga ma pa dha ni

	
	All 12 Swara Stanams
	---------------------

		saa	(Shadjam. Tonic)
		raa	(Suddha Rishabam. Minor Second)
		rii	(Chatusruti Rishabam. Major Second)
		ruu	(Shatsruti Rishabam. Augmented Second; Major Second and a semitone)
		gaa	(Suddha Ghandaram. Diminished Third; Lowered minor third)
		gii	(Sadharana Ghandaram. Minor Third)
		guu	(Antara Ghandaram. Major Third)
		maa	(Suddha Madhyamam. Perfect Fourth)
		mii	(Prati Madhyamam. Augmented Fourth)
		paa	(Panchamam. Perfect Fifth)
		dhaa	(Suddha Dhaivatam. Minor Sixth)
		dhii	(Chatusruti Dhaivatam. Major Sixth)
		dhuu	(Shatsruti Dhaivatam. Augmented Sixth; Major Sixth and a semitone)
		naa	(Suddha Nishadham. Diminished Third; Lowered minor third)
		nii	(Kaisika Nishadham. Minor Third)
		nuu	(Kakali Nishadham. Major Third)
	

-----------------------------------------
Note: sa / saa (Tonic) is coded to note 'c'. Transpose, if desired. 

%}

pitchnamesJyotiSwarupini = #`(
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
(ri . , (ly:make-pitch -1 1 SHARP))
(ga . , (ly:make-pitch -1 2 NATURAL))
(ma . , (ly:make-pitch -1 3 SHARP))
(pa . , (ly:make-pitch -1 4 NATURAL))
(dha . , (ly:make-pitch -1 5 FLAT))
(ni . , (ly:make-pitch -1 6 FLAT))

)

pitchnames = \pitchnamesJyotiSwarupini

\version "2.12.0"


#(ly:parser-set-note-names parser pitchnames)
