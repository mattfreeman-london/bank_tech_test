# Bank Tech Test
Week 10 Makers Project

Approach:
Using TDD to write tests for features before implementing the feature itself. Code is structured logically, with the methods and tests happening in the same order.

Created in Ruby, tested with Rspec.  

To run:
```
bundle install
irb
```

To run tests:
```rspec``` to show functionality  
```rubocop``` to show code clarity and style

Acceptance criteria:  
Given a client makes a deposit of 1000 on 10-01-2012,  
And a deposit of 2000 on 13-01-2012,  
And a withdrawal of 500 on 14-01-2012,  
When she prints her bank statement,   
Then she would see:  

- date || credit || debit || balance
- 14/01/2012 || || 500.00 || 2500.00
- 13/01/2012 || 2000.00 || || 3000.00
- 10/01/2012 || 1000.00 || || 1000.00

Screenshot of working code:
```Makerss-MacBook-Pro-3:bank_tech_test student$ irb
2.6.3 :001 > require './lib/display'
 => true
2.6.3 :002 > d = Display.new(a = Account.new)
 => #<Display:0x00007fd3288cd310 @account=#<Account:0x00007fd3288cd360 @balance=0, @account_activity=[]>>
2.6.3 :003 > a.deposit(1000)
 => 1000
2.6.3 :004 > a.deposit(2000)
 => 3000
2.6.3 :005 > a.withdrawal(500)
 => 2500
2.6.3 :006 > d.print_statement
Date || Credit || Debit || Balance
18/12/2019 || 1000 || || 1000
18/12/2019 || 2000 || || 3000
18/12/2019 || || 500 || 2500
