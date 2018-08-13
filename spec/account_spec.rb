require 'account.rb'

describe Account do

describe 'deposit' do
  it 'adds the amount to the balance' do
    expect { subject.deposit(50) }.to change { subject.balance }.by(50)
    end
  end
end