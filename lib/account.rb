class Account

  attr_reader :balance

  def initialize(statement = Statement.new, transaction = Transaction)
    @balance = 0
    @statement = statement
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @statement.add(@transaction.new(balance: @balance, credit: amount))
  end

  def withdraw(amount)
    @balance -= amount
    @statement.add(@transaction.new(balance: @balance, debit: amount))
  end

  def print_statement
    @statement.print
  end
end
