require 'transaction'

describe DebitTransaction do

  let(:debit) { DebitTransaction.new({ balance: 100, debit: 101 }) }

  it 'returns balance' do
    expect(debit.balance).to eq "100.00"
  end

  it 'returns debit' do
    expect(debit.debit).to eq "101.00"
  end

end


describe CreditTransaction do

  let(:credit) { CreditTransaction.new({ balance: 100, credit: 99 }) }

  it 'returns balance' do
    expect(credit.balance).to eq "100.00"
  end

  it 'returns credit' do
    expect(credit.credit).to eq "99.00"
  end

end
