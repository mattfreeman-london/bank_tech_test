# frozen_string_literal: true

require 'display.rb'
describe Display do
  it 'allows user to see their statement' do
    display = Display.new(account = Account.new)
    account.deposit(1000)
    expect(display.print_statement).to include('18/12/2019 || 1000 || || 1000')
  end
end
