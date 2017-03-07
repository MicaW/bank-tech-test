require "account"

describe Account do
  let(:transaction_class) { double :transaction_class }
  subject(:account) { described_class.new(transaction_class) }

  it 'initalilizes with an account balance of 0' do
    expect(account.balance).to eq(0)
  end

  describe '#credit' do
    it 'adds funds to the account balance' do
      allow(transaction_class).to receive(:new)
      account.credit(1000)
      expect(account.balance).to eq(1000)
    end

    it 'initializes a transaction when a credit is made to the account' do
      expect(transaction_class).to receive(:new)
      account.credit(1000)
    end
  end

  describe '#debit' do
    it 'removes funds from the account balance' do
      allow(transaction_class).to receive(:new)
      account.debit(1000)
      expect(account.balance).to eq(-1000)
    end
    it 'initializes a transaction when a debit is made on the account' do
      expect(transaction_class).to receive(:new)
      account.debit(1000)
    end
  end

end
