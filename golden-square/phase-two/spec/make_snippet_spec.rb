require 'make_snippet'

RSpec.describe 'make_snippet' do
    it 'returns the first 5 words' do
        result = make_snippet('I love cupcakes and chocolate.')
        expect(result).to eq('I love cupcakes and chocolate.')
    end

    it 'returns the first 5 words then "..."'do
        result = make_snippet('I love cupcakes, cakes and chocolate.')
        expect(result).to eq('I love cupcakes, cakes and ...')
    end

    it 'returns the first 5 words then "..."' do
        result = make_snippet('In this project you will build personal diary system')
        expect(result).to eq('In this project you will ...')
    end
end