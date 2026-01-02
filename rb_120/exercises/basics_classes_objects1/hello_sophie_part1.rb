=begin
- Using the code from the previous exercise, add a parameter 
  to `#initialize` that provides a name for the Cat object. 
- Use an instance variable to print a greeting with the provided 
  name. (You can remove the code that displays I'm a cat!.)
=end

## Solution
class Cat
  def initialize(name)
    @name = name   # => Sophie
  end

  def greeting
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greeting   # Hello! My name is Sophie!



## Possible solution
class Cat
  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}!"
  end
end

kitty1 = Cat.new('Sophie')   # Hello! My name is Sophie!
kitty2 = Cat.new('Oliver')   # Hello! My name is Oliver!
