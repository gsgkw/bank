require 'account'

describe Account do
  let(:statement_double) { double :statement }
  subject(:Account) { described_class.new(statement: statement_double) }

  before do
    allow(statement_double).to receive(:add)
    allow(statement_double).to receive(:print) { "printed statement" }
  end

  it 'has a starting balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'deposit increases balance' do
    expect(statement_double).to receive :add
    subject.deposit(100)
    expect(subject.balance).to eq 100
  end

  it 'withdraw decreases balance' do
    subject.deposit(100)
    expect(statement_double).to receive :add
    subject.withdraw(100)
    expect(subject.balance).to eq 0
  end

  it 'prints statement' do
    expect(subject.print_statement).to eq "printed statement"

  end
end
