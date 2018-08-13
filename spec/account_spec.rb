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
end