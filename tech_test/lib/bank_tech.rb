# Class that replicates a bank account
class Bank
  attr_reader :balance

  def initialize
    #  initial balance in user's account
    @balance = 0

    # array that saves all user's transactions
    @transactions = []
  end

  # Method that allows user to deposit money to its account
  # Takes two parameters - transaction's date(DD-MM-YYYY) and amount in integer or float
  def deposit(date, amount)
    # updates balance to reflect deposit
    @balance += amount

    # Adds transaction to beginning of the array
    @transactions.unshift(

      # Adds an Hash to the array with transaction details
      # sprintf - turns integer into a float with two decimal points then converts it into a string
      { date: date,
        credit: format('%.2f', amount),
        debit: '',
        balance: format('%.2f', @balance) }
    )
    "Date: #{date} - Credit: #{format('%.2f', amount)}"
  end

  # Method that allows user to withdraw money to its account
  def withdraw(date, amount)
    # throws error if not enough funds in the account
    raise 'Non-Sufficient funds' if
    (@balance - amount).negative?
    # updates balance to reflect withdraw
    @balance -= amount

    @transactions.unshift(
      { date: date,
        credit: '',
        debit: format('%.2f', amount),
        balance: format('%.2f', @balance) }
    )
    "Date: #{date} - Debit: -#{format('%.2f', amount)}"
  end

  # Method that prints all user's account transactions from most recent to the oldest
  def statement
    puts 'date || credit || debit || balance'
    @transactions.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
    nil
  end
end
