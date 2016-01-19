class AlphabetPyramid

	ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	ERROR_MESSAGE = "INVALID INPUT"

	def self.is_letter?(input)
		input =~ /[A-Za-z]/ && input.size == 1 ? true : false
	
	end 

	def self.letter_range(input)
		range = ""
		letters = ALPHABET[0..ALPHABET.index(input)]
		range << letters + letters[0..-2].reverse
	end 

	def self.response(input)
		output = ""
		position = ALPHABET.index(input)
		self.letter_range(input).split("").each do |i|
		  index = ALPHABET.index(i)
		  output << " " * ( position - index + 1 )
		  i == "A" ? ( output << "A" ) : ( output << i + " " * (index * 2 - 1) + i ) 
		  output << "\n" 
		end
		return output
	end 

	def self.run(input)
		self.is_letter?(input) ? self.response(input.upcase) : ERROR_MESSAGE
	end 

end 