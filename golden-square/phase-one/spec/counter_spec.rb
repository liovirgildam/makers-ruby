require 'counter'

RSpec.describe Counter do
    it 'Adds 2 and returns "Counted to 2 so far."' do
        counter = Counter.new()
        counter.add(2)
        result = counter.report()
        expect(result).to eq "Counted to 2 so far."
    end
    it 'Adds 2, 5, 8 and returns "Counted to 15 so far."' do
        counter = Counter.new()
        counter.add(2)
        counter.add(5)
        counter.add(8)
        result = counter.report()
        expect(result).to eq "Counted to 15 so far."
    end
end