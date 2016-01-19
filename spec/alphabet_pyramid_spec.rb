require 'alphabet_pyramid'

describe AlphabetPyramid do 

	context 'Check input characters' do 
		it 'rejects unacceptable inputs' do 
			expect(AlphabetPyramid.is_letter?("1")).to eq false 
			expect(AlphabetPyramid.is_letter?("*")).to eq false 
			expect(AlphabetPyramid.is_letter?("")).to eq false 
		end 
		it 'accepts alphabetical inputs' do 
			expect(AlphabetPyramid.is_letter?("A")).to eq true 
			expect(AlphabetPyramid.is_letter?("a")).to eq true 
		end 
		it 'rejects multiple character inputs' do 
			expect(AlphabetPyramid.is_letter?("AA")).to eq false 
		end 
	end

	context 'Display outputs' do 
		it 'identifies the correct range of letters' do 
			expect(AlphabetPyramid.letter_range("E")).to eq "ABCDEDCBA"
		end 
	end 

	context 'Final output' do 
		    expected = <<-EXPECTED
    A
   B B
  C   C
 D     D
  C   C
   B B
    A
EXPECTED

		it 'displays final output' do 
		    expect(AlphabetPyramid.response("D")).to eq(expected)
		end 
		it 'runs final output' do 
			expect(AlphabetPyramid.run("D")).to eq(expected)
			expect(AlphabetPyramid.run("d")).to eq(expected)
			expect(AlphabetPyramid.run("*")).to eq "INVALID INPUT"
		end 
	end 

end 