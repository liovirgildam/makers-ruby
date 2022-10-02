require 'gratitudes'

RSpec.describe Gratitudes do
    it" returns 'Be grateful for: Lia'" do
        grat = Gratitudes.new()
        grat.add("Lia")
        result = grat.format()
        expect(result).to eq "Be grateful for: Lia"
    end
    it" returns 'Be grateful for: Lia'" do
        grat = Gratitudes.new()
        grat.add("Jehovah")
        grat.add("Lia")
        grat.add("Alda")
        grat.add("Tati")
        result = grat.format()
        expect(result).to eq "Be grateful for: Jehovah, Lia, Alda, Tati"
    end


end