# Generates scale headers for 72 mela ragams. 
# output: lilypond headers for all the scales in separate files.
# (c) Ragu, Ananth, Ganesh. Sep 10, 2010
# Licensed under GNU GPL Version 3 or later. <http://www.gnu.org/licenses/>

require 'erb'
require 'lily_data'

def swaram_header
	RagaData::SWARA_STHANAMS.inject('') do |header, swaram|
		header += "(#{swaram} . , #{LilyData::PITCH_CODES[swaram]})\n"
	end
end

def ragam_header(scale)
	header = ''
	scale.each_index do |idx|
		header += "(#{RagaData::SWARAMS[idx]} . , #{LilyData::PITCH_CODES[scale[idx]]})\n"
	end

	header
end

mela_ragam_header = ERB.new <<EOF

%{

This lilypond file defines Note/Pitch Names for a Raga in Carnatic Music.
This file can be '\\include'd in a lilypond score to notate carnatic music compositions as standard western scores.

Source and Documentation: https://github.com/lilyraga

Copyright (c) 2010 ananth
Licensed under GNU GPL Version 3 or later. <http://www.gnu.org/licenses/>
-----------------------------------------

	Mela Ragam Number: <%= idx+1 %>
	Ragam		 : <%= ragam %>

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


%}

pitchnames<%= ragam %> = #`(
<%= swaram_header() %>
<%= ragam_header(scale) %>
)

pitchnames = \\pitchnames<%= ragam %>

\\version "2.12.0"


#(ly:parser-set-note-names parser pitchnames)
EOF

ragams = RagaData.mela_ragams

ragams.each_index do |idx|
	scale = ragams[idx]
	ragam = RagaData::RAGA_NAMES_EN[idx]
	File.open("../carnatic/melam/#{idx+1}_#{ragam.downcase}.ly", 'w') << mela_ragam_header.result(binding)
end
