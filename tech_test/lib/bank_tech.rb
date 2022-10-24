class Bank
    def initialize
        @balance = 0
        @movements = []
    end
    

    def balance
        @balance
    end

    def deposit(date, amount)
        @balance = @balance + amount
        @movements.unshift( 
            { date: date, credit: "", deposit: amount, balance: @balance }
        )
    end

end