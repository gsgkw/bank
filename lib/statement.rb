class Statement

  attr_reader :records

  def initialize(transaction = Transaction)
    @transaction = transaction
    @records = []
  end

  def add(args)
    @records.unshift(@transaction.new(args))
  end

  def print_header
    puts "date || credit || debit || balance"
  end

  def print_transactions
    records.each do |txn|
      puts "#{txn.date} || #{txn.credit} || #{txn.debit} || #{txn.balance}"
    end
  end

  def print
    print_header
    print_transactions
  end
end
