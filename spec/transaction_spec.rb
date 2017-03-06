
describe Transaction do
  subject(:transaction) { described_class.new }
  let (:account) {double :account}
  allow(account).to receive(:credit).with(amount)

  it 'initializes when a credit is made to the account' do
    account.credit(1000)
    expect(transaction).to be_a(Transaction)
  end

  # it 'keeps track of credits to the account in transactions' do
  #     account.credit(1000)
  #     account.credit(500)
  #     expect(account.transactions).to eq([{credit: 1000}, {credit: 500}])
  # end
end
