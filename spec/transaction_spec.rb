require 'transaction'

describe Transaction do

  txn = Transaction.new({ balance: 100, credit: 99, debit: 101 })

  it 'responds to balance' do
    expect(txn.balance).to eq 100

    expect(txn.debit).to eq 101
  end

  it 'responds to credit' do
    expect(txn.credit).to eq 99
  end

  it 'responds to debit' do
    expect(txn.debit).to eq 101
  end

end
