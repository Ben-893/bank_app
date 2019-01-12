require 'byebug'
class Printer

  def balance(balance)
    puts "£#{balance}"
  end

  def transactions(transactions)
    puts header + format_statements(transactions)
  end

  private

  def format_statements(transactions)
    transactions.map do |transaction|
      "#{transaction.time} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end

  def header
    ["date || credit || debit || balance" + "\n"]
  end
end