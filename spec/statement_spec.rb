require 'statement'

describe Statement do
  let(:transaction) { double :transaction }
  subject(:Statement) { described_class.new(transaction) }

  before do
    allow(transaction).to receive(:new) { transaction }
    allow(transaction).to receive(:date) { 1 }
    allow(transaction).to receive(:credit) { 2 }
    allow(transaction).to receive(:debit) { 3 }
    allow(transaction).to receive(:balance) { 4 }
  end

  it 'prints header' do
    expect { subject.print_header }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'initializes with empty log' do
    expect(subject.records.length).to eq 0
  end

  it 'adds transaction to log' do
    subject.add(100)
    expect(subject.records.length).to eq 1
  end

  it 'prints transaction data' do
    subject.add(100)
    expect { subject.print_transactions }.to output("1 || 2 || 3 || 4\n").to_stdout
  end

end
