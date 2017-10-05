require 'date'

class CreditTransaction
  attr_reader :date, :credit, :balance
  def initialize(credit:, balance:)
    @date = Date.today.strftime("%m/%d/%y")
    @credit = credit
    @balance = balance
  end
end

class DebitTransaction
  attr_reader :date, :debit, :balance
  def initialize(debit:, balance:)
    @date = Date.today.strftime("%m/%d/%y")
    @debit = debit
    @balance = balance
  end
end
