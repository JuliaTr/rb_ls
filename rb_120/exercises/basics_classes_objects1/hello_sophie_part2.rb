=begin
Using the code from the previous exercise, move the greeting from 
the `#initialize` method to an instance method named `#greet` that 
prints a greeting when invoked.
=end

## Solution
class Cat
  def initialize(name)
    @name = name  # instance variable
  end

  def greet  # instance method
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet   # Hello! My name is Sophie!



## Experiments
class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
# When running the code, nothing prints
