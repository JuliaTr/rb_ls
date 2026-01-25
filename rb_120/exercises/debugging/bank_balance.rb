=begin
`BankAccount` class is with overdraft protection, that does not 
allow a withdrawal greater than the amount of the current balance. 

Why are we seeing this unexpected output? Make changes to the 
code so that we see the appropriate behavior.
=end

class BankAccount
  attr_reader :balance

  def initialize(account_number, client)
    @account_number = account_number
    @client = client
    @balance = 0
  end

  def deposit(amount)
    if amount > 0
      self.balance += amount
      "$#{amount} deposited. Total balance is $#{balance}."
    else
      "Invalid. Enter a positive amount."
    end
  end

  def withdraw(amount)
    if amount > 0
      success = (self.balance -= amount)
    else
      success = false
    end

    if success
      "$#{amount} withdrawn. Total balance is $#{balance}."
    else
      "Invalid. Enter positive amount less than or equal to current balance ($#{balance})."
    end
  end

  def balance=(new_balance)
    if valid_transaction?(new_balance)
      @balance = new_balance
      true
    else
      false
    end
  end

  def valid_transaction?(new_balance)
    new_balance >= 0
  end
end

account = BankAccount.new('5538898', 'Genevieve')

p account.balance      # 0
p account.deposit(50)  # "$50 deposited. Total balance is $50."

p account.balance      # 50
p account.withdraw(80)
# Bug: "$80 withdrawn. Total balance is $50."
# Expected: "Invalid. Enter positive amount less than or equal to current balance ($50)."

p account.balance     # 50




## Possible solution:
class BankAccount
  attr_reader :balance

  def initialize(account_number, client)
    @account_number = account_number
    @client = client
    @balance = 0
  end

  # Keeps `withdraw` focused on the rule ("is this transaction valid?")
  # and lets `balance=` handle the actual assignment.
  def deposit(amount)
    if amount > 0
      self.balance += amount
      "$#{amount} deposited. Total balance is $#{balance}."
    else
      "Invalid. Enter a positive amount."
    end
  end

  def withdraw(amount)
    if amount > 0 && valid_transaction?(balance - amount)
      self.balance -= amount
      "$#{amount} withdraw. Total balance is $#{balance}."
    else
      "Invalid. Enter positive amount less than or equal to current balance($#{balance})"
    end
  end

  def balance=(new_balance)
    @balance = new_balance
  end

  def valid_transaction?(new_balance)
    new_balance >= 0
  end
end

account = BankAccount.new('5538898', 'Genevieve')

p account.balance      # 0
p account.deposit(50)  # "$50 deposited. Total balance is $50."

p account.balance      # 50
p account.withdraw(80)
# "Invalid. Enter positive amount less than or equal to current balance ($50)."

p account.balance     # 50
# Works as expected.

=begin
Here, `balance=` method will therefore always return its argument,
irrespective of rhether or not the instance variable `balance` is 
re-assigned.
=end



## Experiments:
class BankAccount
  attr_reader :balance

  def initialize(account_number, client)
    @account_number = account_number
    @client = client
    @balance = 0
  end

  def deposit(amount)
    if amount > 0
      # changed:
      @balance += amount
      # changed:
      "$#{amount} deposited. Total balance is $#{@balance}."
    else
      "Invalid. enter a positive amount."
    end
  end

  def withdraw(amount)
    # changed
    if amount > 0 && amount <= @balance
      # changed
      success = (@balance -= amount)
    else
      success = false
    end

    if success
      # changed
      "$#{amount} withdrawn. Total balance is $#{@balance}."
    else
      # changed
      "Invalid. Enter positive amount less than or equal to current balance ($#{@balance})."
    end
  end

  # Here, no need in `balance=` writer method and `valid_transaction?`.
  # However, all validation of the new balance should happen in one 
  # place (`valid_transaction?`)
end

account = BankAccount.new('5538898', 'Genevieve')

p account.balance      # 0
p account.deposit(50)  #"$50 deposited. Total balance is $50."

p account.balance    # 50
p account.withdraw(80)
# "Invalid. Enter positive amount less than or equal to current balance ($50)."

p account.balance   # 50
# Works as expected.

p account.withdraw(50) # "$50 withdrawn. Total balance is $0."
p account.balance   # 0
