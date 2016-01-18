require 'alphabet_pyramid'

describe AlphabetPyramid do 

	context 'Check input characters' do 
		it 'rejects numbers as unacceptable inputs' do 
			expect(AlphabetPyramid.letter?("1")).to eq "INVALID INPUT" 
			expect(AlphabetPyramid.letter?("0")).to eq "INVALID INPUT" 
		end 
		it 'rejects other characters as unacceptable inputs' do 
			expect(AlphabetPyramid.letter?("*")).to eq "INVALID INPUT" 
			expect(AlphabetPyramid.letter?(".")).to eq "INVALID INPUT" 
		end 
		it 'accepts uppercase letters as acceptable inputs' do 
			expect(AlphabetPyramid.letter?("A")).to eq true 
			expect(AlphabetPyramid.letter?("B")).to eq true 
		end 
		it 'accepts lowercase letters as acceptable inputs' do 
			expect(AlphabetPyramid.letter?("a")).to eq true 
			expect(AlphabetPyramid.letter?("b")).to eq true 
		end 
		it 'rejects multiple character inputs' do 
			expect(AlphabetPyramid.letter?("AA")).to eq "INVALID INPUT" 
		end 
	end

	context 'Convert input into correct format' do 
		it 'converts lowercase letters to uppercase' do 
			expect(AlphabetPyramid.convert("a")).to eq "A"
			expect(AlphabetPyramid.convert("b")).to eq "B"
		end
		it 'find position in alphabet' do 
			expect(AlphabetPyramid.position("C")).to eq 2
			expect(AlphabetPyramid.position("M")).to eq 12
		end 
	end 

	context 'Display outputs' do 
		it 'displays the right output for input A' do
			expect(AlphabetPyramid.single_line_output("A")).to eq "A" 
			expect(AlphabetPyramid.single_line_output("B")).to eq "B B" 
			expect(AlphabetPyramid.single_line_output("C")).to eq "C   C" 
		end 
		it 'displays the correct range of letters' do 
			expect(AlphabetPyramid.range("E")).to eq "ABCDEDCBA"
		end 
	end 

	context 'Final output' do 

	end 

end 