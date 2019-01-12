require './lib/transactions'
require './lib/printer'

class Account
  attr_reader :balance, :transactions

  def initialize(printer)
    @printer = printer
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(amount, 0, @balance)
  end

  def withdraw(amount)
    fail "Not enough credit" if @balance < amount
    @balance -= amount
    @transactions << Transaction.new(0, amount, @balance)
  end

  def print_balance
    @printer.balance(@balance)
  end

  def print_transactions
    puts "date || credit || debit || balance" + "\n"
    @transactions.each do |transaction|
      puts "#{transaction.time} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end
end