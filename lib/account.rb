require_relative 'transaction'

class Account

  DEFAULT_BALANCE = 0
  attr_accessor :balance
  attr_accessor :Transaction

  def initialize (balance = DEFAULT_BALANCE, transaction_class)
    @balance = balance
    @Transaction = transaction_class
  end

  def credit(amount)
    @balance += amount
    credit_transaction(amount)
  end

  def debit(amount)
    @balance -= amount
    debit_transaction(amount)
  end

  private

  def credit_transaction(amount)
    date = Time.now.strftime('%m/%d/%Y')
    credit = amount
    debit = nil
    balance = @balance
    @Transaction.new(date, credit, debit, balance)
  end

  def debit_transaction(amount)
    date = Time.now.strftime('%m/%d/%Y')
    credit = nil
    debit = amount
    balance = @balance
    @Transaction.new(date, credit, debit, balance)
  end

end
