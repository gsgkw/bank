require './lib/account'
require './lib/statement'
require './lib/transaction'

p account = Account.new
p account.deposit(100.00)
p account.deposit(150.00)
p account.withdraw(70.00)

account.print_statement
