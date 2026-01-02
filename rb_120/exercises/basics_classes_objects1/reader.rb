=begin
Using the code from the previous exercise, add a getter method
named `#name` and invoke it in place of `@name` in `#greet`.
=end

# Option 1
class Cat
  def initialize(name)
    @name = name
  end

  def name  # geeter method
    @name
  end

  def greet
    puts "Hello! My name is #{name}!"  # `name` is a method
  end
end

kitty = Cat.new('Sophie')
kitty.greet   # Hello! My name is Sophie!
p kitty.name  # "Sophie"



# Option 2 (simpler):
class Cat
  attr_reader :name     # `attr_reader` creates a getter method

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet     # Hello! My name is Sophie!
p kitty.name    # "Sophie"
