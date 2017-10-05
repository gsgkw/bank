require 'statement'

describe Statement do
  let(:debit_class) { double :DebitTransaction }
  let(:debit) { double :debit }
  subject(:Statement) { described_class.new }

  before do
    allow(debit_class).to receive(:new) { debit }
    allow(debit).to receive(:format) { "1.00 || || 2.00 || 3.00" }
  end

  it 'initializes with empty log' do
    expect(subject.records.length).to eq 0
  end

  it 'adds transaction to log' do
    subject.add_debit(debit)
    expect(subject.records).to eq [debit]
  end

  it 'prints header and transaction data' do
    subject.add(debit)
    expect { subject.print }.to output("date || credit || debit || balance\n1.00 || || 2.00 || 3.00\n").to_stdout
  end

end
