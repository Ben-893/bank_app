class Transaction
  attr_accessor :credit, :debit, :time, :balance

  def initialize(credit = 0, debit = 0, balance = 0)
    @credit = credit
    @debit = debit
    @time = Time.now.strftime('%m/%d/%Y')
    @balance = balance
  end
end