class Account

  DEFAULT_BALANCE = 0
  attr_accessor :balance

  def initialize (balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def credit(amount)
    @balance = (balance + amount)
  end

  def debit(amount)
    @balance = (balance - amount)
  end

end
