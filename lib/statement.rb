class Statement

  attr_reader :records

  def initialize
    @records = []
  end

  def add_credit(transaction)
    @records.unshift(TransactionFormatter.credit(transaction))
  end

  def add_debit(transaction)
    @records.unshift(TransactionFormatter.debit(transaction))
  end

  def print
    StatementFormatter.print_header
    StatementFormatter.print_transactions(@records)
  end
end

class StatementFormatter
  def self.print_header
    puts "date || credit || debit || balance"
  end

  def self.print_transactions(records)
    records.each do |transaction|
      puts transaction
    end
  end
end

class TransactionFormatter
  def self.credit(transaction)
    "#{transaction.date} || #{'%.2f' % transaction.credit} || || #{'%.2f' % transaction.balance}"
  end

  def self.debit(transaction)
    "#{transaction.date} || || #{'%.2f' % transaction.debit} || #{'%.2f' % transaction.balance}"
  end
end
