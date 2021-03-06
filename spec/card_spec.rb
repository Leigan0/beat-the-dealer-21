require 'card'

describe Card do 

	describe '#initialize' do 
		it 'initializes with a deck of 52 card values' do 
			expect(subject.deck.count).to eq 52
		end
	end

	describe '#deal_card' do 
		it 'removes a card from deck' do 
			subject.release_card
			expect(subject.deck.count).to eq 51
		end

		it 'returns the value of the card removed from deck' do
			allow_any_instance_of(Array).to receive(:pop).and_return(11) 
			expect(subject.release_card).to eq 11
		end 
	end

end