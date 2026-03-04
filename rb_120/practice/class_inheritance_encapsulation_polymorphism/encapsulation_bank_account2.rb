=begin
Description​​: Define a BankAccount class. The constructor should 
accept an initial balance. The class should have the following 
instance methods: deposit, which adds to the balance, withdraw, 
which subtracts from the balance, and balance, which returns the 
current balance.
=end

class BankAccount
  # Internal representation is hidden from outside world
  attr_reader :balance  # encapsulation

  def initialize(balance)
    @balance = balance
  end

  def deposit(more_money)
    @balance += more_money
  end

  def withdraw(money)
    @balance -= money
  end
end

account = BankAccount.new(100)
p account.balance == 100
account.deposit(50)
p account.balance == 150
account.withdraw(20)
p account.balance == 130
# All test cases return `true`
