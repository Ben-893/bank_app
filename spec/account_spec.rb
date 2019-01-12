require 'account.rb'
require 'printer.rb'
require 'transactions.rb'

describe Account do

  let(:printer) { Printer.new }
  let(:account) { Account.new(printer) }
  let(:transaction) { Transaction.new }

  describe 'deposit' do
    it 'adds the amount to the balance' do
      expect { account.deposit(50, transaction) }.to change { account.balance }.by(50)
    end
  end

  describe 'withdraw' do
    it 'deducts the amount from the balance' do
      account.deposit(50, transaction)
      expect { account.withdraw(50, transaction) }.to change { account.balance }.by(-50)
    end
  end

  describe 'print_balance' do
    it 'it prints the balance' do
      account.deposit(50, transaction)
      expect(STDOUT).to receive(:puts).with("£50")
      account.print_balance
    end
  end

  describe 'print_transactions' do
    it 'it prints the balance' do
      allow(Time).to receive(:now).and_return(Time.new('2019-01-01'))
      account.deposit(50, transaction)
      expect(STDOUT).to receive(:puts).with(["date || credit || debit || balance\n", "01/01/2019 || 50 || 0 || 50"])
      account.print_transactions
    end
  end

  describe 'transactions' do
    it 'adds a transaction to the array when depositing' do
      expect(account.transactions).to be_empty
      account.deposit(50, transaction)
      expect(account.transactions).to_not be_empty
    end

    it 'adds a transaction to the array when withdrawing' do
      expect(account.transactions).to be_empty
      account.deposit(50, transaction)
      account.withdraw(50, transaction)
      expect(account.transactions).to_not be_empty
    end
  end

  describe 'Balance too low' do
    it 'raises an error when someone wants to withdraw an amount larger than the balance' do
      expect { account.withdraw(50, transaction) }.to raise_error "Not enough credit"
    end
  end
end
