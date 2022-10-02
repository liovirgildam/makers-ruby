require 'greet'

RSpec.describe 'greet method' do
    it 'greets John' do
        result = greet('John')
        expect(result).to eq('Hello, John!')
    end
end