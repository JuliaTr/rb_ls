=begin
Define a `BankAccount` class with:

- An internal `balance` (start with 0)
A deposit method that increases the balance
A withdraw method that decreases the balance
A method display_balance that prints the current balance
Keep the balance as an instance variable (e.g. @balance) and don’t read or write it directly outside the class.
=end

# Encapsulation:
class BankAccount
  def initialize
    @balance = 0
  end

  def deposit(number)
    @balance += number
  end

  def withdraw(number)
    @balance -= number
  end

  def display_balance
    "Your balance is: $#{@balance}."
  end
end

account = BankAccount.new
account.deposit(100)
p account.display_balance  # "Your balance is: $100."

account.withdraw(30)
p account.display_balance  # "Your balance is: $70."

p account.balance
=begin
undefined method `balance' for #<BankAccount:0x000000010bd75620 
@balance=70> (NoMethodError)

Object cannot see balance directly, but can deposit and 
withdraw money, display balance.
=end




# "Broken" encapsulation
# with `attr_reader :balance`
class BankAccount
  attr_reader :balance   # "breaks" incapsulation

  def initialize
    @balance = 0
  end

  def deposit(number)
    @balance += number
  end

  def withdraw(number)
    @balance -= number
  end

  def display_balance
    @balance
  end
end

account = BankAccount.new
p account.balance # 0
p account.balance = 999999

=begin
undefined method `balance=' for #<BankAccount:0x0000000106b65290 
@balance=0> (NoMethodError)

An object doesn't have access to change it account balance directly.
=end
