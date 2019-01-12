require 'printer.rb'
require 'transactions.rb'

describe Printer do

  let(:transactions) { [Transaction.new(50, 0, 50), Transaction.new(50, 0, 50)] }

  describe 'Print balance' do
    it 'Prints the balance' do
      expect(STDOUT).to receive(:puts).with("£50")
      subject.balance(50)
    end
  end

  describe 'Print transactions' do
    it 'Prints a list of transactions' do
      allow(Time).to receive(:now).and_return(Time.new('2019-01-01'))
      expect(STDOUT).to receive(:puts).with(["date || credit || debit || balance\n", "01/01/2019 || 50 || 0 || 50", "01/01/2019 || 50 || 0 || 50"])
      subject.transactions(transactions)
    end
  end
end