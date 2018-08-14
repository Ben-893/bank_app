require 'transactions.rb'

describe Transaction do

context 'when initialized' do
  it 'takes a amount' do
    transaction = Transaction.new(50)
      expect(transaction.amount).to eq(50)
    end
  end
end