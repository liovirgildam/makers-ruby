require "bank_tech"

RSpec.describe Bank do
    it "makes an initial deposit of 1000 pounds to a bank account" do
        io = double :io
        account = Bank.new(io)
        account.deposit("20/10/2022", 1000)
        
        expect(account.balance).to eq 1000.00
        expect(io).to receive(:puts).with( "date || credit || debit || balance").ordered
        expect(io).to receive(:puts).with( "20/10/2022 || 1000.00 ||  || 1000.00").ordered
        account.statement
    end

    it "makes two consecutives deposits 1000 and 2000 to a bank account" do
        io = double :io
        account = Bank.new(io)
        account.deposit("20/10/2022", 1000)
        account.deposit("21/10/2022", 2000)
        
        expect(account.balance).to eq 3000.00
        expect(io).to receive(:puts).with( "date || credit || debit || balance").ordered
        expect(io).to receive(:puts).with( "21/10/2022 || 2000.00 ||  || 3000.00").ordered
        expect(io).to receive(:puts).with( "20/10/2022 || 1000.00 ||  || 1000.00").ordered
        account.statement

    end

    it "makes a withdraw of 500 after a deposit of 1000" do
        io = double :io
        account = Bank.new(io)
        account.deposit("20/10/2022", 1000)
        account.withdraw("22/10/2022", 500)
        
        expect(account.balance).to eq 500.00
        expect(io).to receive(:puts).with( "date || credit || debit || balance").ordered
        expect(io).to receive(:puts).with( "22/10/2022 ||  || 500.00 || 500.00").ordered
        expect(io).to receive(:puts).with( "20/10/2022 || 1000.00 ||  || 1000.00").ordered
        account.statement
    end 

    it "prints account statement to the terminal" do
        io = double :io
        account = Bank.new(io)
        account.deposit("20/10/2022", 1000)
        account.deposit("21/10/2022", 2000)
        account.withdraw("24/11/2022", 500)
        
        expect(account.balance).to eq 2500
        expect(io).to receive(:puts).with( "date || credit || debit || balance").ordered
        expect(io).to receive(:puts).with( "24/11/2022 ||  || 500.00 || 2500.00").ordered
        expect(io).to receive(:puts).with( "21/10/2022 || 2000.00 ||  || 3000.00").ordered
        expect(io).to receive(:puts).with( "20/10/2022 || 1000.00 ||  || 1000.00").ordered
        account.statement

    end
end