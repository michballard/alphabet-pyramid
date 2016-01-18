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

	def self.single_line_output(input)
		return "A" if input == "A"
		spacing = self.position(input) * 2 - 1
		output = ""
		output << input + " " * spacing + input
	end 

	def self.range(input)
		output = ""
		range = ALPHABET[0..self.position(input)]
		output << range + range[0..-2].reverse
	end 

end 