# frozen_string_literal: true

# this is the class for the whole program
class Account
  attr_reader :balance, :account_activity

  def initialize
    @balance = 0
    @account_activity = []
  end

  def deposit(amount)
    @balance += amount
    @account_activity << "#{Time.now.strftime('%d/%m/%Y')} || #{amount} || || #{@balance}"
  end

  def withdrawal(amount)
    @balance -= amount
    @account_activity << "#{Time.now.strftime('%d/%m/%Y')} || || #{amount} || #{@balance}"
  end

  def show_balance
    @balance
  end

  def print_statement
    "Date || Credit || Debit || Balance\n#{@account_activity.reverse.join('\n')}"
  end
end
