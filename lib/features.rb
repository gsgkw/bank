require 'date'

class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(args)
    @date = Date.today
    @credit = args[:credit] || ""
    @debit = args[:debit] || ""
    @balance = args[:balance]
  end

end
