require 'report_length'

RSpec.describe 'report_length method' do
    it 'returns a string with 5 when passed hello' do
        result = report_length('hello')
        expect(result).to eq "This string was 5 characters long.";
    end
    it 'returns a string with 4 when passed lili' do
        result = report_length('Lili')
        expect(result).to eq "This string was 4 characters long.";
    end
end
