require "bank_tech"

RSpec.describe Bank do
    it "makes an initial deposit of 1000 pounds to a bank account" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        expect(account.balance).to eq 1000
    end

    it "makes two consecutives deposits 1000 and 2000 to a bank account" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        account.deposit("21/10/2022", 2000)
        expect(account.balance).to eq 3000
    end

    it "makes a withdraw of 500 after a deposit of 1000" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        account.withdraw("22/10/2022", 500)
        expect(account.balance).to eq 500
    end 

    it "prints account statement" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        account.deposit("21/10/2022", 2000)
        account.withdraw("24/11/2022", 500)
        expect(account.balance).to eq 2500
        expect(account.statement).to eq 
        "date || credit || debit || balance
        14/01/2023 || || 500.00 || 2500.00
        13/01/2023 || 2000.00 || || 3000.00
        10/01/2023 || 1000.00 || || 1000.00"
    end
end