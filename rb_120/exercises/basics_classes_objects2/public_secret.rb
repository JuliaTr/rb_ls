=begin
- Using the following code, create a class named `Person` with an 
  instance variable named `@secret`. 
- Use a setter method to add a value to `@secret`, then use a getter 
  method to print `@secret`.
=end

## Solution
class Person
  attr_accessor :secret

  # Works without it:
  # def initialize
  #   @secret
  # end
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret  
# Shh.. this is a secret!



## Possible solution
# Option 1
class Person
  attr_accessor :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret
# Shh.. this is a secret!


# Option 2
class Person
  def secret           # getter
    @secret
  end

  def secret=(value)   # setter
    @secret = value
  end
end

