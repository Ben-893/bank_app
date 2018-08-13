require 'account.rb'

describe Account do

decribe 'deposit' do
  it 'adds the amount to the balance' do
    expect { account.deposit(50) }.to change { account.balance }.by(50)
end











end