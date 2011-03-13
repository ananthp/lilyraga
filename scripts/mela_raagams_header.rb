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
This file can be '\include'd in a lilypond score to notate carnatic music compositions as standard western scores.

Source and Documentation: https://github.com/lilyraga

Copyright (c) 2010 ananth
Licensed under GNU GPL Version 3 or later. <http://www.gnu.org/licenses/>
-----------------------------------------

	<%= idx+1 %>. <%= ragam %>
      
	section 1: All 12 Swara-stanas (Tones)
		raa rii ruu = Suddha, Chatusruti, Shatsruti Rishabams
		gaa gii guu = su, sadha, antara Ga
		etc.
     	
	section 2: Swara-stanas belonging to Ragam <%= ragam %>
		sa ri ga ma etc. (Scale Tones)

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
