=begin
Should we put `@` before `balance` on line 13?
=end

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

=begin
We shouldn't because we refer to the `balace` getther method 
created automatically by `attr_reader` (line 6), returning the
value for `@balance` instance variable. The body of the
`positive_balance?` method will evaluate to calling the `balance`
method of the class, which will return the value of the `@balance`
instance variable.
=end
