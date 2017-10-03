require 'account'

describe Account do
  let(:statement) { double :statement }
  subject(:Account) { described_class.new(statement) }

  before do
    allow(statement).to receive(:add)
    allow(statement).to receive(:print) { "printed statement" }
  end

  it 'has a starting balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'deposit increases balance' do
    expect(statement).to receive :add
    subject.deposit(100)
    expect(subject.balance).to eq 100
  end

  it 'withdraw decreases balance' do
    subject.deposit(100)
    expect(statement).to receive :add
    subject.withdraw(100)
    expect(subject.balance).to eq 0
  end

  it 'prints statement' do
    expect(subject.print_statement).to eq "printed statement"

  end
end
