require 'date'


class CreditTransaction

  def initialize(credit:, balance:)
    @date = Date.today.strftime("%m/%d/%y")
    @credit = credit
    @balance = balance
  end

  def format
    "#{@date} || #{'%.2f' % @credit} || || #{'%.2f' % @balance}"
  end
end


class DebitTransaction

  def initialize(debit:, balance:)
    @date = Date.today.strftime("%m/%d/%y")
    @debit = debit
    @balance = balance
  end

  def format
    "#{@date} || || #{'%.2f' % @debit} || #{'%.2f' % @balance}"
  end
end
