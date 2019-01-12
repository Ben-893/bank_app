require 'account.rb'
require 'printer.rb'

describe Account do

  let(:printer) { Printer.new }
  let(:account) { Account.new(printer) }

  describe 'deposit' do
    it 'adds the amount to the balance' do
      expect { account.deposit(50) }.to change { account.balance }.by(50)
    end
  end

  describe 'withdraw' do
    it 'deducts the amount from the balance' do
      account.deposit(50)
      expect { account.withdraw(50) }.to change { account.balance }.by(-50)
    end
  end

  describe 'balance' do
    it 'it prints the balance' do
      account.deposit(50)
      expect(account.print_balance).to eq "£#{50}"
    end
  end

  describe 'transactions' do
    it 'adds a transaction to the array when depositing' do
      expect(account.transactions).to be_empty
      account.deposit(50)
      expect(account.transactions).to_not be_empty
    end

    it 'adds a transaction to the array when withdrawing' do
      expect(account.transactions).to be_empty
      account.deposit(50)
      account.withdraw(50)
      expect(account.transactions).to_not be_empty
    end
  end

  describe 'Balance too low' do
    it 'raises an error when someone wants to withdraw an amount larger than the balance' do
      expect { account.withdraw(50) }.to raise_error "Not enough credit"
    end
  end
end
