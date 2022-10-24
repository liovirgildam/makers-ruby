require "bank_tech"

RSpec.describe Bank do
    it "user makes an initial deposit of 1000 pounds to its bank account" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        
        expect(account.balance).to eq 1000.00
    end

    it "user makes two consecutives deposits of 1000 and 2000 to its bank account" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        account.deposit("21/10/2022", 2000)
        
        expect(account.balance).to eq 3000.00
    end

    it "user makes two consecutives deposits of 250.50 and 249.49" do
        account = Bank.new
        account.deposit("20/10/2022", 250.50)
        account.deposit("21/10/2022", 249.49)
        
        expect(account.balance).to eq 499.99
    end

    it "user makes a withdraw of 500 after a deposit of 1000" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        account.withdraw("22/10/2022", 500)
        
        expect(account.balance).to eq 500.00
    end 

    context "throws an error if user tries to withdraw an amount larger than account balance" do
        it "fails" do
            account = Bank.new
            account.deposit("20/10/2022", 1000)
            expect{ account.withdraw("21/10/2022", 1100)}.to raise_error "Non-Sufficient funds"
        end
    end

    it "prints account statement to the terminal" do
        account = Bank.new
        account.deposit("20/10/2022", 1000)
        account.deposit("21/10/2022", 2000)
        account.withdraw("24/11/2022", 500)
        
        expect(account.balance).to eq 2500
        expect{account.statement}.to output(
            "date || credit || debit || balance\n" +
            "24/11/2022 ||  || 500.00 || 2500.00\n" + 
            "21/10/2022 || 2000.00 ||  || 3000.00\n" +
            "20/10/2022 || 1000.00 ||  || 1000.00\n").to_stdout
    end
end