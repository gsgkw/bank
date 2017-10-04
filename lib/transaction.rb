require 'date'

class CreditTransaction
  attr_reader :date, :credit, :balance

  def initialize(credit:, balance:)
    @date = Date.today.strftime("%m/%d/%y")
    @credit = '%.2f' % credit
    @balance = '%.2f' % balance
  end

  def debit
    nil
  end

end



class DebitTransaction
  attr_reader :date, :debit, :balance

  def initialize(debit:, balance:)
    @date = Date.today.strftime("%m/%d/%y")
    @debit = '%.2f' % debit
    @balance = '%.2f' % balance
  end

  def credit
    nil
  end

end
