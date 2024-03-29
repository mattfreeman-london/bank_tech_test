# frozen_string_literal: true

require_relative 'account.rb'
# class to create and format statements for the account
class Display
  def initialize(account)
    @account = account
  end

  def print_header
    puts 'Date || Credit || Debit || Balance'
  end

  def print_items
    @account.account_activity.each { |i| puts i }
  end

  def print_statement
    print_header
    print_items
  end
end
