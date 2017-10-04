class Statement

  attr_reader :records

  def initialize
    @records = []
  end

  def add(transaction)
    @records.unshift(transaction)
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
      puts TransactionFormatter.format(transaction)
    end
  end
end

class TransactionFormatter
  def self.format(transaction)
    [
      transaction.date,
      transaction.credit,
      transaction.debit,
      transaction.balance
    ].join(" || ")
  end
end
