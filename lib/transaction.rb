require 'date'

class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(credit: nil, debit: nil, balance:)
    @date = Date.today.strftime("%m/%d/%y")
    @credit = credit
    @debit = debit
    @balance = balance
  end

end
