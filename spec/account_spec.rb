# frozen_string_literal: true

require 'account.rb'

describe Account do
  it 'starts with a zero balance' do
    expect(subject.balance).to eql(0)
  end

  describe 'depositing and withdrawing' do
    it 'accepts a deposit' do
      expect { subject.deposit(1000) }.to change { subject.balance }.by 1000
    end

    it 'allows you to make a withdrawal' do
      expect { subject.withdrawal(500) }.to change { subject.balance }.by(-500)
    end
  end

  describe 'customer can view their statement' do
    it 'keeps track of an updated balance' do
      subject.deposit(10)
      subject.withdrawal(5)
      expect(subject.show_balance).to eq(5)
    end

    it 'allows customers to view a full statement' do
      subject.deposit(1000)
      expect(subject.print_statement).to eq("Date || Credit || Debit || Balance\n#{Time.now.strftime('%d/%m/%Y')} || 1000 || || 1000")
    end
  end
end
