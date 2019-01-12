require 'transactions.rb'

describe Transaction do

  let(:transaction) { Transaction.new(50, 0, 50) }

  describe 'Initialize' do
    it 'Initializes a transaction with a credit value' do
      expect(transaction.credit).to eq(50)
    end

    it 'Initializes a transaction with a debit value' do
      expect(transaction.debit).to eq(0)
    end

    it 'Initializes a transaction with a balance value' do
      expect(transaction.balance).to eq(50)
    end

    it 'Initializes a transaction with a date' do
      allow(Time).to receive(:now).and_return(Time.new('2019-01-01'))
      expect(transaction.time).to eq('01/01/2019')
    end
  end
end