
describe TransactionLog do
  let(:account) { double :account }
  subject(:transaction_log) { described_class }

  it 'tracks a credit transaction' do
    account.credit(1000)
    date = Time.now.strftime('%m/%d/%Y')
    expect(account.transactions).to eq({date: date,
            credit: 1000,
            debit: nil,
            balance: 1000})
  end

end
