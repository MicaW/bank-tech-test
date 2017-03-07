require_relative 'account'

class Transaction
  attr_accessor 'info'

  def initialize(date, credit, debit, balance)
    @info = {date: date,
            credit: credit,
            debit: debit,
            balance: balance}
  end

end
