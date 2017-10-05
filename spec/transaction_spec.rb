require 'transaction'

describe DebitTransaction do

  let(:debit) { DebitTransaction.new({ balance: 100, debit: 101 }) }

  it 'formats transaction' do
    expect(debit.format).to eq "#{Date.today.strftime("%m/%d/%y")} || || 101.00 || 100.00"
  end
end

describe CreditTransaction do

  let(:credit) { CreditTransaction.new({ balance: 100, credit: 99 }) }

  it 'formats transaction' do
    expect(credit.format).to eq "#{Date.today.strftime("%m/%d/%y")} || 99.00 || || 100.00"
  end
end
