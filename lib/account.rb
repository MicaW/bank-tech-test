class Account

  DEFAULT_BALANCE = 0

  def initialize (balance = DEFAULT_BALANCE)
    @balance = balance
  end

attr_accessor :balance

end
