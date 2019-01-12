require './lib/transactions'
require './lib/printer'

class Account
  attr_reader :balance, :transactions

  def initialize(printer)
    @printer = printer
    @balance = 0
    @transactions = []
  end

  def deposit(amount, transaction)
    @balance += amount
    transaction.credit = amount
    transaction.balance = @balance
    @transactions << transaction
  end

  def withdraw(amount, transaction)
    fail "Not enough credit" if @balance < amount
    @balance -= amount
    transaction.debit = amount
    transaction.balance = @balance
    @transactions << transaction
  end

  def print_balance
    @printer.balance(@balance)
  end

  def print_transactions
    @printer.transactions(@transactions)
  end
end