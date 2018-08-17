class Transaction
  attr_reader :amount, :time

  def initialize(amount)
    @amount = amount
    @time = Time.now.strftime('%m/%d/%Y')
  end
end