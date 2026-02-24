# Description​​: Define a BankAccount class. The constructor 
# should accept an initial balance. The class should have the 
# following instance methods: deposit, which adds to the balance, 
# withdraw, which subtracts from the balance, and balance, which 
# returns the current balance.

class BankAccount
  def initialize(current_balance)
    @current_balance = current_balance
  end

  def balance
    @current_balance
  end

  def deposit(more_money)
    @current_balance += more_money
  end

  def withdraw(less_money)
    @current_balance -= less_money
  end
end

account = BankAccount.new(100)
p account.balance == 100 # true
account.deposit(50)
p account.balance == 150 # true
account.withdraw(20)
p account.balance == 130 # true