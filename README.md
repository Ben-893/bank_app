# Bank App

<a href="https://codeclimate.com/github/Ben-893/bank_app/maintainability"><img src="https://api.codeclimate.com/v1/badges/ef9f078d1ad2889df2a4/maintainability" /></a>

This is a bank account app that allows you to desposit/withdraw money, see your balance, and see the the date and time of any tranactions.

## Setup

```
git clone https://github.com/Ben-893/bank_app.git && cd bank_app
gem install bundler
bundle install
```

## To Use

```
irb
require './lib/account.rb'
account = Account.new
Call the methods on 'account'
```

## List of Commands: 
- Create a new account: `account = Account.new`
- Make a deposit: `account.deposit(amount)`
- Make a withdrawal: `account.withdraw(amount)`
- See your transaction history: `account.print_transactions`

## Requirements

- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see:

```
date       || debit   || balance
14/01/2012 || 500.00  || 2500.00
13/01/2012 || 2000.00 || 3000.00
10/01/2012 || 1000.00 || 1000.00
```
## Technologies used
- Ruby
- Rspec
