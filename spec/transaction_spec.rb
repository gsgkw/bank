require 'transaction'

describe Transaction do

  let(:txn) { Transaction.new({ balance: 100, credit: 99, debit: 101 }) }

  it 'returns balance' do
    expect(txn.balance).to eq 100
  end

  it 'returns credit' do
    expect(txn.credit).to eq 99
  end

  it 'returns debit' do
    expect(txn.debit).to eq 101
  end

end
