require "account"

describe Account do
  subject(:account) { described_class.new }

  it 'initalilizes with an account balance of 0' do
    expect(account.balance).to eq(0)
  end

  describe '#credit' do
    it 'adds funds to the account balance' do
      account.credit(1000)
      expect(account.balance).to eq(1000)
    end
  end

  describe '#debit' do
    it 'removes funds from the account balance' do
      account.debit(1000)
      expect(account.balance).to eq(-1000)
    end
  end

  # it 'initializes a transaction when a credit is made to the account' do
  #   account.credit(1000)
  #   expect(transaction).to be_a(Transaction)
  # end

  # it 'keeps track of credits to the account in transactions' do
  #   account.credit(1000)
  #   account.credit(500)
  #   expect(account.transactions).to eq([{credit: 1000}, {credit: 500}])
  # end
end
