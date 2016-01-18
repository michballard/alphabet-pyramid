class AlphabetPyramid

	ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	def self.letter?(input)
		return true if input =~ /[A-Za-z]/ && input.size == 1
		"INVALID INPUT"
	end 

	def self.convert(input)
		input.upcase
	end 

	def self.range(input)
		output = ""
		range = ALPHABET[0..ALPHABET.index(input)]
		output << range + range[0..-2].reverse
	end 

	def self.full_response_output(input)
		output = ""
		position = ALPHABET.index(input)
		self.range(input).split("").each do |i|
		  index = ALPHABET.index(i)
		  output << " " * ( position - index + 1 )
		  i == "A" ? ( output << "A" ) : ( output << i + " " * (index * 2 - 1) + i ) 
		  output << "\n\n" 
		end
		return output
	end 

end 