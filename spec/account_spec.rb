require 'account.rb'

describe Account do


describe 'deposit' do
  it 'adds the amount to the balance' do
    expect { subject.deposit(50) }.to change { subject.balance }.by(50)
  end
end

describe 'withdraw' do
  it 'deducts the amount from the balance' do
    subject.deposit(50)
    expect { subject.withdraw(50) }.to change { subject.balance }.by(-50)
  end
end

describe 'transactions' do
  it 'adds a transaction to the array when depositing' do
    expect(subject.transactions).to be_empty
    subject.deposit(50)
    expect(subject.transactions).to_not be_empty
  end

  it 'adds a transaction to the array when withdrawing' do
    expect(subject.transactions).to be_empty
    subject.deposit(50)
    subject.withdraw(50)
    expect(subject.transactions).to_not be_empty
  end
end

  describe 'Balance too low' do
    it 'raises an error when someone wants to withdraw an amount larger than the balance' do
      expect { subject.withdraw(50) }.to raise_error "Not enough credit"
    end
  end

  describe 'print_transactions' do
    it 'prints a list of transactions' do
      subject.deposit(50)
      expect(subject.print_transactions).to eq "Amount: 50,\n      Date: 08/17/2018"
    end
  end
end
