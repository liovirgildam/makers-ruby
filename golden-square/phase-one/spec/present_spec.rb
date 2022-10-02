require 'present'

RSpec.describe Present do
    context "When no present to unwrap" do
        it "fails" do
            present = Present.new()
            expect { present.unwrap() }.to raise_error "No contents have been wrapped."
        end
    end
    context "When present have already been wrapped" do
        it "fails" do
            present = Present.new()
            present.wrap("toys")
            expect { present.wrap("toys") }.to raise_error "A contents has already been wrapped."
        end
    end
    it "returns toys after been wrapped and unwrapped" do
        present = Present.new()
        present.wrap("toys")
        result = present.unwrap
        expect(result).to eq "toys"
    end


    
end