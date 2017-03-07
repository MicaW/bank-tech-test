require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }
  let (:account) {double :account}

  it 'initializes with a hash of transaction information' do
    transaction = Transaction.new('03/03/2017', 500, nil, 500)
    expect(transaction.info).to eq({date: '03/03/2017',
            credit: 500,
            debit: nil,
            balance: 500})
  end

end
