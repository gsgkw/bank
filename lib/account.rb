class Account

  attr_reader :balance

  def initialize(statement: Statement.new, credit: CreditTransaction, debit: DebitTransaction)
    @balance = 0
    @statement = statement
    @credit = credit
    @debit = debit
  end

  def deposit(amount)
    @balance += amount
    @statement.add_credit(@credit.new(balance: @balance, credit: amount))
  end

  def withdraw(amount)
    @balance -= amount
    @statement.add_debit(@debit.new(balance: @balance, debit: amount))
  end

  def print_statement
    @statement.print
  end
end
