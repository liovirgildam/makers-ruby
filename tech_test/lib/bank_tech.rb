class Bank
    def initialize(io)
        @io = io
        @balance = 0
        @movements = []
    end
    

    def balance
        @balance
    end

    def deposit(date, amount)
        @balance = @balance + amount
        @movements.unshift( 
            { date: date, credit: sprintf('%.2f', amount), debit: "" , balance: sprintf('%.2f', @balance) }
        )
    end

    def withdraw(date, amount)
        @balance = @balance - amount
        @movements.unshift( 
            { date: date, credit: "" , debit: sprintf('%.2f', amount), balance: sprintf('%.2f', @balance) }
        )
    end

    def statement
        @io.puts "date || credit || debit || balance"
        @movements.each do |movement|
            @io.puts "#{movement[:date]} || #{movement[:credit]} || #{movement[:debit]} || #{movement[:balance]}"
        end
    end

end