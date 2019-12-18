# frozen_string_literal: true

# this is the class for managing the account
class Account
  attr_reader :account_activity, :balance

  def initialize
    @balance = 0
    @account_activity = []
  end

  def current_date
    Time.now.strftime('%d/%m/%Y')
  end

  def deposit(amount)
    @balance += amount
    @account_activity << "#{current_date} || #{amount} || || #{@balance}"
  end

  def withdrawal(amount)
    @balance -= amount
    @account_activity << "#{current_date} || || #{amount} || #{@balance}"
  end

  def show_balance
    @balance
  end

  def print_statement
    "Date || Credit || Debit || Balance\n#{@account_activity.reverse.join('\n')}"
  end
end
