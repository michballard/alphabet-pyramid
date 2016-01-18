require 'alphabet_pyramid'

describe AlphabetPyramid do 

	context 'Check input characters' do 
		it 'rejects unacceptable inputs' do 
			expect(AlphabetPyramid.letter?("1")).to eq "INVALID INPUT" 
			expect(AlphabetPyramid.letter?("*")).to eq "INVALID INPUT" 
			expect(AlphabetPyramid.letter?("")).to eq "INVALID INPUT" 
		end 
		it 'accepts alphabetical inputs' do 
			expect(AlphabetPyramid.letter?("A")).to eq true 
			expect(AlphabetPyramid.letter?("a")).to eq true 
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
	end 

	context 'Display outputs' do 
		it 'identifies the correct range of letters' do 
			expect(AlphabetPyramid.range("E")).to eq "ABCDEDCBA"
		end 
	end 

	context 'Final output' do 
		it 'displays final output' do 
		    expected = <<-EXPECTED
    A

   B B

  C   C

 D     D

  C   C

   B B

    A

EXPECTED
		    expect(AlphabetPyramid.full_response_output("D")).to eq(expected)
		end 
	end 

end 