require 'printer.rb'

describe Printer do

  describe 'Print balance' do
    it 'Prints the balance' do
      expect(subject.balance(50)).to eq ("£50")
    end
  end
end