# frozen_string_literal: true

require 'display.rb'
describe Display do
    it 'allows user to see their statement' do
      
      expect(subject.print_statement).to include('Credit')
    end
end
