class Transaction
  attr_reader :credit, :debit, :time, :balance

  def initialize(credit, debit, balance)
    @credit = credit
    @debit = debit
    @time = Time.now.strftime('%m/%d/%Y')
    @balance = balance
  end
end