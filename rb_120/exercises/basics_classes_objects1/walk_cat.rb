=begin
- Using the following code, create a module named `Walkable` that 
  contains a method named `#walk`. 
- This method should print `Let's go for a walk!` when invoked. 
- Include `Walkable` in `Cat` and invoke `#walk` on `kitty`.
=end

module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end

  include Walkable    # at the bottom of the class definition
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk

=begin
Hello! My name is Sophie!
Let's go for a walk!
=end



## Possible solution:
module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  include Walkable   # at the top of the class definition

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk

=begin
Hello! My name is Sophie!
Let's go for a walk!
=end
