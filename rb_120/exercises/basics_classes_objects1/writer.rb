=begin
- Using the code from the previous exercise, add a setter method 
  named `#name=`. 
- Then, rename `kitty` to `'Luna'` and invoke `#greet` again.
=end

class Cat
  attr_accessor :name   # creates getter and setter

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'
kitty.greet

=begin
Hello! My name is Sophie!
Hello! My name is Luna!
=end



## Possible solution
# Option 1
class Cat
  attr_reader :name    # creates getter
  attr_writer :name    # creates setter

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'
kitty.greet

=begin
Hello! My name is Sophie!
Hello! My name is Luna!
=end



# Option 2
class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name=(name)   # setter method
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sopie')
kitty.greet
kitty.name = 'Luna'
kitty.greet

=begin
Hello! My name is Sopie!
Hello! My name is Luna!
=end
