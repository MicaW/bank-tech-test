# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

------------------------------------------------------------------------

## User stories

```
As a bank customer,
I want to deposit money in my account,
So that I can top up my balance.

As a bank customer,
I want to withdraw money from my account,
So that I can use my money.

As a bank customer,
I want to see the dates that my transactions have been made,
So that I can track my spending.

As a bank customer,
I want to see the balance of my account after transactions are made,
So that I know how much money I have.

As a bank customer,
I want to print my account statement,
So that I can see all of my transaction details.

As a bank customer,
I want to interact with my bank via the command line,
So that I can use my bank in my preferred method.
```

## Domain Model

```
Object    | Messages

Account   | credit
          | debit
          | print statement
```
