require "account"

describe Account do
  subject(:account) { described_class.new }

  it 'initalilizes with an account balance of 0' do
    expect(account.balance).to equal(0)
  end



end