# Generates scale headers for 72 mela ragams. 
# output: lilypond headers for all the scales in separate files.
# Ragu, Ananth, Ganesh. Sep 10, 2010

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
	<%= idx+1 %>. <%= ragam %>
      
	section 1: All 12 Swara-stanas
		raa rii ruu = Suddha, Chatusruti, Shatsruti Rishabams
		gaa gii guu = su, sadha, antara Ga
		etc.
     	
	section 2: Swara-stanas belonging to Ragam <%= ragam %>
		sa ri ga ma etc.

-----------------------------------------

Copyright (c) 2010 ananth
http://beautifulnote.com
https://github.com/lilyraga

This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
	File.open("./melam/#{idx+1}_#{ragam.downcase}.ly", 'w') << mela_ragam_header.result(binding)
end
