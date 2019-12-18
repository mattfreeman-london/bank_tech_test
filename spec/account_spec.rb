# frozen_string_literal: true

require 'account.rb'

describe Account do
  describe 'depositing and withdrawing' do
    it 'accepts a deposit' do
      subject.deposit(10)
      expect(subject.deposit(10)).to eq(20)
    end

    it 'allows you to make a withdrawal' do
      subject.deposit(500)
      expect(subject.withdrawal(150)).to eq(350)
    end
  end
end
