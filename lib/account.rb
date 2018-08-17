require './lib/transactions'
require 'byebug'

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(amount)
  end

  def withdraw(amount)
    fail "Not enough credit" if @balance < amount
    @balance -= amount
    @transactions << Transaction.new(amount)
  end

  def print_balance
   "£#{@balance}"
  end
end