require 'count_words'

RSpec.describe 'count_words' do
    it "returns the number of words in 'I lobe you' " do
        result = count_words('I love you')
        expect(result).to eq 3
    end

    it "returns the number if words in 'You are learning Ruby' " do
        result = count_words('You are learning Ruby')
        expect(result).to eq 4
    end

    it "returns 'Input must be a string' when argument is a number" do
        expect{ count_words(3) }.to raise_error 'Input must be a string'
    end
end