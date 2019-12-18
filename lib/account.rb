# frozen_string_literal: true

# this is the class for managing the account
class Account
    DEFAULT_BALANCE = 0
  attr_reader :account_activity

  def initialize
    @balance = DEFAULT_BALANCE
    @account_activity = []
  end

  def current_date
    Time.now.strftime('%d/%m/%Y')
  end

  def deposit(amount)
    @account_activity << "#{current_date} || #{amount} || || #{@balance += amount}"
    @balance
  end

  def withdrawal(amount)
    @account_activity << "#{current_date} || || #{amount} || #{@balance -= amount}"
    @balance
  end
end
