require 'check_codeword'

RSpec.describe'check_codeword method' do
    it 'returns "Wrong!" for word hello' do
        result = check_codeword('hello')
        expect(result).to eq "WRONG!"
    end
    it 'returns "Close, but nope." for word here' do
        result = check_codeword('here')
        expect(result).to eq "Close, but nope."
    end
    it 'returns "Correct! Come in." when passed "horse"' do
        result = check_codeword('horse')
        expect(result).to eq "Correct! Come in."
    end
end