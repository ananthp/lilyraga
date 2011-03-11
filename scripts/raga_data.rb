module RagaData

	SA = 'sa'
	SAA = 'saa'
	RE = 'ri'
	GA = 'ga'
	MA = 'ma'
	PA = 'pa'
	PAA = 'paa'
	DA = 'dha'
	NI = 'ni'

	RE1 = 'raa'
	RE2 = 'rii'
	RE3 = 'ruu'

	GA1 = 'gaa'
	GA2 = 'gii'
	GA3 = 'guu'

	MA1 = 'maa'
	MA2 = 'mii'

	DA1 = 'dhaa'
	DA2 = 'dhii'
	DA3 = 'dhuu'

	NI1 = 'naa'
	NI2 = 'nii'
	NI3 = 'nuu'

	SWARAMS = [SA, RE, GA, MA, PA, DA, NI]
	SWARA_STHANAMS = [SAA, RE1, RE2, RE3, GA1, GA2, GA3, MA1, MA2, PAA, DA1, DA2, DA3, NI1, NI2, NI3]

	def self.mela_ragams
		sa = SAA
		pa = PAA

		raagams = []

		[MA1, MA2].each { |ma|
			[RE1, RE2, RE3].each { |re|
				[GA1, GA2, GA3].each { |ga|
					unless (re == RE2 && ga == GA1)  || (re == RE3 && ga == GA2) || (re == RE3 && ga == GA1) 
						[DA1, DA2, DA3].each { |da|
							[NI1, NI2, NI3].each { |ni|
								unless (da == DA2 && ni == NI1)  || (da == DA3 && ni == NI2) || (da == DA3 && ni == NI1) 
									raagam = [sa, re, ga, ma, pa, da, ni]
									raagams << raagam
								end
							}
						}
					end
				}
			}
		}

		raagams
	end
# Raga names taken from Wikipedia. 
	RAGA_NAMES_EN =
['Kanakangi', 
'Ratnangi', 
'Ganamurti', 
'Vanaspati', 
'Manavati', 
'Tanarupi', 
'Senavati', 
'Hanumatodi', 
'Dhenuka', 
'Natakapriya', 
'Kokilapriya', 
'Rupavati', 
'Gayakapriya', 
'Vakulabharanam', 
'Mayamalavagowla', 
'Chakravakam', 
'Suryakantam', 
'Hatakambari', 
'Jhankaradhwani', 
'Natabhairavi', 
'Keeravani', 
'Kharaharapriya', 
'Gourimanohari', 
'Varunapriya', 
'Mararanjani', 
'Charukesi', 
'Sarasangi', 
'Harikambhoji', 
'Dheerasankarabharanam', 
'Naganandini', 
'Yagapriya', 
'Ragavardhini', 
'Gangeyabhushani', 
'Vagadheeswari', 
'Shulini', 
'Chalanata', 
'Salagam', 
'Jalarnavam', 
'Jhalavarali', 
'Navaneetam', 
'Pavani', 
'Raghupriya', 
'Gavambhodi', 
'Bhavapriya', 
'Shubhapantuvarali', 
'Shadvidamargini', 
'Suvarnangi', 
'Divyamani', 
'Dhavalambari', 
'Namanarayani', 
'Kamavardani', 
'Ramapriya', 
'Gamanashrama', 
'Vishwambari', 
'Shamalangi', 
'Shanmukhapriya', 
'Simhendramadhyamam', 
'Hemavati', 
'Dharmavati', 
'Neetimati', 
'Kantamani', 
'Rishabhapriya', 
'Latangi', 
'Vachaspati', 
'Mechakalyani', 
'Chitrambari', 
'Sucharitra', 
'JyotiSwarupini', 
'Dhatuvardani', 
'Nasikabhushani', 
'Kosalam', 
'Rasikapriya', 
]


	NUMBERS =
[
"One",
"Two",
"Three",
"Four",
"Five",
"Six",
"Seven",
"Eight",
"Nine",
"Ten",
"Eleven",
"Twelve",
"Thirteen",
"Fourteen",
"Fifteen",
"Sixteen",
"Seventeen",
"Eighteen",
"Ninteen",
"Twenty",
"TwentyOne",
"TwentyTwo",
"TwentyThree",
"TwentyFour",
"TwentyFive",
"TwentySix",
"TwentySeven",
"TwentyEight",
"TwentyNine",
"Thirty",
"ThirtyOne",
"ThirtyTwo",
"ThirtyThree",
"ThirtyFour",
"ThirtyFive",
"ThirtySix",
"ThirtySeven",
"ThirtyEight",
"ThirtyNine",
"Fourty",
"FourtyOne",
"FourtyTwo",
"FourtyThree",
"FourtyFour",
"FourtyFive",
"FourtySix",
"FourtySeven",
"FourtyEight",
"FourtyNine",
"Fifty",
"FiftyOne",
"FiftyTwo",
"FiftyThree",
"FiftyFour",
"FiftyFive",
"FiftySix",
"FiftySeven",
"FiftyEight",
"FiftyNine",
"Sixty",
"SixtyOne",
"SixtyTwo",
"SixtyThree",
"SixtyFour",
"SixtyFive",
"SixtySix",
"SixtySeven",
"SixtyEight",
"SixtyNine",
"Seventy",
"SeventyOne",
"SeventyTwo"
]

end
