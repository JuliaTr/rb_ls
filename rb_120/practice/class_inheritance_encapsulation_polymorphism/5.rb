# Encapsulation and Refactoring

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance  # balance in dollars
  end

  def positive_balance?
    @balance > 0
  end
end

account = BankAccount.new(50)
puts account.balance  # 50
puts account.positive_balance?  # true



# Later, the class is refactored internally
class BankAccount
  def initialize(starting_balance)
    @balance_in_cents = starting_balance * 100 # 5000
  end

  def balance
    @balance_in_cents / 100.0 # 50.0
  end

  def positive_balance?
    @balance_in_cents > 0
  end
end

account = BankAccount.new(50)
puts account.balance  # 50.0
puts account.positive_balance? # true
