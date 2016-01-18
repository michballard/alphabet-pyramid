class AlphabetPyramid

	ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	def self.letter?(input)
		return true if input =~ /[A-Za-z]/ && input.size == 1
		"INVALID INPUT"
	end 

	def self.convert(input)
		input.upcase
	end 

	def self.position(input)
		ALPHABET.index(input)
	end 

end 