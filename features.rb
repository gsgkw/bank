require './lib/account'
require './lib/statement'
require './lib/transaction'


p account = Account.new
p account.deposit(100)
p account.deposit(150)
p account.withdraw(70)

account.print_statement
