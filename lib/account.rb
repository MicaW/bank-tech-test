require_relative 'transaction'

class Account

  DEFAULT_BALANCE = 0
  attr_accessor :balance

  def initialize (balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end

end
