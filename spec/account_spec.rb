require 'account.rb'

describe Account do

describe 'deposit' do
  it 'adds the amount to the balance' do
    expect { subject.deposit(50) }.to change { subject.balance }.by(50)
  end
end

describe 'withdraw' do
  it 'deducts the amount from the balance' do
    expect { subject.withdraw(50) }.to change { subject.balance }.by(-50)
  end
end

describe 'transactions' do
  it 'is an empty array' do
    expect(subject.transactions).to be_empty
    subject.deposit(50)
    expect(subject.transactions).to_not be_empty
    end
  end
end