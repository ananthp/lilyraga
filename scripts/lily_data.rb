require './raga_data.rb'

module LilyData

	PITCH_CODES = {
RagaData::SA => "(ly:make-pitch -1 0 NATURAL)",
RagaData::SAA => "(ly:make-pitch -1 0 NATURAL)",
RagaData::RE1 => "(ly:make-pitch -1 1 FLAT)",
RagaData::RE2 => "(ly:make-pitch -1 1 NATURAL)",
RagaData::RE3 => "(ly:make-pitch -1 1 SHARP)",
RagaData::GA1 => "(ly:make-pitch -1 2 DOUBLE-FLAT)",
RagaData::GA2 => "(ly:make-pitch -1 2 FLAT)",
RagaData::GA3 => "(ly:make-pitch -1 2 NATURAL)",
RagaData::MA1 => "(ly:make-pitch -1 3 NATURAL)",
RagaData::MA2 => "(ly:make-pitch -1 3 SHARP)",
RagaData::PA => "(ly:make-pitch -1 4 NATURAL)",
RagaData::PAA => "(ly:make-pitch -1 4 NATURAL)",
RagaData::DA1 => "(ly:make-pitch -1 5 FLAT)",
RagaData::DA2 => "(ly:make-pitch -1 5 NATURAL)",
RagaData::DA3 => "(ly:make-pitch -1 5 SHARP)",
RagaData::NI1 => "(ly:make-pitch -1 6 DOUBLE-FLAT)",
RagaData::NI2 => "(ly:make-pitch -1 6 FLAT)",
RagaData::NI3 => "(ly:make-pitch -1 6 NATURAL)"
	}
end
