lilyraga (Lily Raga)
====================
Lilypond header/language files for Carnatic Ragas.

With these header files for lilypond, you can score a carnatic composition (in some _raga_) in _Sa Ri Ga Ma_ notation (_sargam_) and render them in standard western staff notation.
	
	\include "carnatic/melam/15_mayamalavagowla.ly"
	\relative sa' {
		sa8 ri ga ma pa dha ni sa | sa ni dha pa ma ga ri sa
	}
	

Should produce this: ![https://github.com/ananthp/lilyraga/blob/master/examples/sample-raga.png](https://github.com/ananthp/lilyraga/raw/master/examples/sample-raga.png)

(A few more lines needed to compile the above lilypond code. _examples_ folder has an easy, minimal template to copy from. Also read Lilypond's documentation.)

	
## Folder Structure

	+-lilyraga/
	|	+-README.md
	|	+-carnatic/			<-- COPY this folder to /your/lilypond/path/ly
	|	|	+-carnatic.ly	<--	Generic Carnatic pitchnames file. 
	|	|	+-melam/	<--	Header files for all 72 Mela Ragas
	|	|	| +-01_kanakangi.ly
	|	|	| +-02_ratnangi.ly
			...
			... 
	|	+-examples		<-- 	Score examples, how-to, 72 Mela Raga Chart. (TODO)
	|
	|	+scripts		<--	Ruby scripts to generate Lilypond header files for Carnatic Ragams.



Copy the folder _carnatic_ to lilypond's include path (where it keeps language files like arabic.ly, english.ly etc)

## Real-world Examples

These scores are produced using lilyraga files

* [IMSLP: Maha Ganapathim by Muthuswamy Dikshitar](http://imslp.org/wiki/Maha_Ganapathim_%28Muttusv%C4%81mi_D%C4%ABk%E1%B9%A3ita%29#Scores)
* [github: Shobillu Saptaswara - Score and Source](https://github.com/ananthp/carnatic_scores/tree/master/shobillu-jaganmohini/source)


