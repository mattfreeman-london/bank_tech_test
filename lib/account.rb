class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @account_activity = []
  end

  def deposit(amount)
    @balance += amount
    @account_activity << "#{ Time.now.strftime("%d/%m/%Y") } || #{amount} || || #{@balance}"
  end

  def withdrawal(amount)
    @balance -= amount
    @account_activity << "#{ Time.now.strftime("%d/%m/%Y") } || || #{amount} || #{@balance}"
  end

  def show_statement
    @balance
  end

end
