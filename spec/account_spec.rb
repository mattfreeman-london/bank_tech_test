require 'account.rb'

describe Account do
  it 'starts with a zero balance' do
    expect(subject.balance).to eql(0)
  end

  it 'shows an updated balance' do
    subject.deposit(10)
    subject.withdrawal(5)
    expect(subject.statement).to eq(5)
  end

  describe 'depositing and withdrawing' do
    it 'accepts a deposit' do
      expect{ subject.deposit(10) }.to change{ subject.balance }.by 10
    end

    it 'allows you to make a withdrawal' do
      expect{ subject.withdrawal(10) }.to change{ subject.balance }.by -10
    end

  end

end
