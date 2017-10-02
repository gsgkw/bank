class Account

  attr_reader :balance

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.add({ balance: @balance, credit: amount })
  end

  def withdraw(amount)
    @balance -= amount
    @statement.add({ balance: @balance, debit: amount })
  end

  def print_statement
    @statement.print
  end
end
