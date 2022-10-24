require "bank_tech"

RSpec.describe Bank do
    it "makes an initial deposit of 1000 pounds to a bank account" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        expect(account.balance).to eq 1000
    end
end