class Bank
    def initialize()
        # initial balance in user's account
        @balance = 0

        # array that saves all user's transactions
        @transactions = []
    end
    
    # Method that checks user's balance
    def balance
        @balance
    end

    # Method that allows user to deposit money to its account 
    # Takes two parameters - transaction's date(DD-MM-YYYY) and amount in integer or float
    def deposit(date, amount)
        # updates balance to reflect deposit
        @balance = @balance + amount

        # Adds transaction to beginning of the array 
        @transactions.unshift( 

            # Adds an Hash to the array with transaction details 
            # sprintf - turns integer into a float with two decimal points then converts it into a string
            { date: date, credit: sprintf('%.2f', amount), debit: "" , balance: sprintf('%.2f', @balance) }
        )
    end

    # Method that allows user to withdraw money to its account
    def withdraw(date, amount)
       
        # throws error if not enough funds in the account
        fail "Non-Sufficient funds" if (@balance - amount) < 0
        @balance = @balance - amount

        # updates balance to reflect withdraw
        @transactions.unshift( 
            { date: date, credit: "" , debit: sprintf('%.2f', amount), balance: sprintf('%.2f', @balance) }
        )
    end

    # Method that prints all user's account transactions from most recent to the oldest
    def statement

        puts "date || credit || debit || balance"
        @transactions.each do |transaction|
            puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
        end
    end

end