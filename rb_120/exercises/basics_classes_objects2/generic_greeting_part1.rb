=begin
Modify the following code so that Hello! I'm a cat! is printed 
when Cat.generic_greeting is invoked.
=end

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting   # Hello! I'm a cat!



## Experiments
class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

kitty = Cat.new
kitty.generic_greeting
=begin
undefined method `generic_greeting' 
for #<Cat:0x000000010cfa5b10> (NoMethodError)
=end
