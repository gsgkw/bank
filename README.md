Specification

Setup

Run bundle install

Create new account using Account.new
Deposit and Withdraw funds using account.deposit or account.withdraw
print statement using account.print_statement

statement is instance of statement class
transactions are instances of transaction class




Requirements

Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

Tests

Account
  has a starting balance of 0
  deposit increases balance
  withdraw decreases balance
  prints statement

Statement
  initializes with empty log
  adds transaction to log
  prints header and transaction data

DebitTransaction
  formats transaction

CreditTransaction
  formats transaction

Features

p account = Account.new
/#<Account:0x007ffb700126d8 @balance=0, @statement=#<Statement:0x007ffb70012688 @transaction=Transaction, @records=[]>>

p account.deposit(100)
[#<Transaction:0x007ffb700121d8 @date=#<Date: 2017-10-02 ((2458029j,0s,0n),+0s,2299161j)>, @credit=100, @debit="", @balance=100>]

p account.deposit(150)
[#<Transaction:0x007ffb70011da0 @date=#<Date: 2017-10-02 ((2458029j,0s,0n),+0s,2299161j)>, @credit=150, @debit="", @balance=250>, #<Transaction:0x007ffb700121d8 @date=#<Date: 2017-10-02 ((2458029j,0s,0n),+0s,2299161j)>, @credit=100, @debit="", @balance=100>]

p account.withdraw(70)
[#<Transaction:0x007ffb70011580 @date=#<Date: 2017-10-02 ((2458029j,0s,0n),+0s,2299161j)>, @credit="", @debit=70, @balance=180>, #<Transaction:0x007ffb70011da0 @date=#<Date: 2017-10-02 ((2458029j,0s,0n),+0s,2299161j)>, @credit=150, @debit="", @balance=250>, #<Transaction:0x007ffb700121d8 @date=#<Date: 2017-10-02 ((2458029j,0s,0n),+0s,2299161j)>, @credit=100, @debit="", @balance=100>]

account.print_statement
date || credit || debit || balance
10/03/17 || || 70.00 || 180.00
10/03/17 || 150.00 || || 250.00
10/03/17 || 100.00 || || 100.00
