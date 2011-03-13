lilyraga (Lily Raga)
====================
Lilypond Headers for Carnatic Ragas.

With these header files for lilypond, you can score a carnatic composition (in some _raga_) in _Sa Ri Ga Ma_ notation (_sargam_) and render them in standard western staff notation.

## Folder Structure

	+-lilyraga/
	|	+-README.md
	|	+-carnatic/
	|	|	+-carnatic.ly	<--	Generic Carnatic pitchnames file. 
	|	|	+-melam/	<--	Header files for all 72 Mela Ragas
	|	|	| +-1_kanakangi.ly
	|	|	| +-2_ratnangi.ly
			...
			... 
	|	+-examples		<-- 	Score examples, how-to, 72 Mela Raga Chart. (TODO)
	|
	|	+scripts		<--	Ruby scripts to generate Lilypond header files for Carnatic Ragams.


## Quick How-to

Copy the folder _carnatic_ to lilypond's include path (where it keeps language files like arabic.ly, english.ly etc)
	
	
	\include "carnatic/melam/15_mayamalavagowla.ly"
	\relative sa' {
		sa8 ri ga ma pa dha ni sa | sa ni dha pa ma ga ri sa
	}
	
	

Should produce this: ![https://github.com/ananthp/lilyraga/blob/master/examples/sample-raga.png](https://github.com/ananthp/lilyraga/raw/master/examples/sample-raga.png)

(Of course, you need to add a few more lines to compile the above lilypond code. _examples_ folder has compilable code. Read [Lily Raga Wiki](https://github.com/ananthp/lilyraga/wiki), and Lilypond's documentation.

## Real-world Examples

These scores are produced using lilyraga files

* [IMSLP: Maha Ganapathim by Muthuswamy Dikshitar](http://imslp.org/wiki/Maha_Ganapathim_%28Muttusv%C4%81mi_D%C4%ABk%E1%B9%A3ita%29#Scores)
* [github: Shobillu Saptaswara - Score and Source](https://github.com/ananthp/carnatic_scores/tree/master/shobillu-jaganmohini/source)


