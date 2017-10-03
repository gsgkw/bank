require 'statement'

describe Statement do
  let(:transactionclass) { double :transaction }
  let(:transaction) { double :transaction }
  subject(:Statement) { described_class.new(transaction) }

  before do
    allow(transactionclass).to receive(:new) { transaction }
    allow(transaction).to receive(:date) { 1 }
    allow(transaction).to receive(:credit) { 2 }
    allow(transaction).to receive(:debit) { 3 }
    allow(transaction).to receive(:balance) { 4 }
  end

  it 'initializes with empty log' do
    expect(subject.records.length).to eq 0
  end

  it 'adds transaction to log' do
    subject.add(transaction)
    expect(subject.records).to eq [transaction]
  end

  it 'prints header and transaction data' do
    subject.add(transaction)
    expect { subject.print }.to output("date || credit || debit || balance\n1 || 2 || 3 || 4\n").to_stdout
  end

end
