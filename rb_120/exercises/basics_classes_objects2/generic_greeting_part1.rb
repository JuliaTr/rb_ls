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



## Further exploration
=begin
What happens if you run `kitty.class.generic_greeting`? Can you 
explain this result?
=end
class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

kitty = Cat.new
p kitty.class                  # Cat
kitty.class.generic_greeting   # Hello! I'm a cat!

=begin
Line 44, `kitty.class.generic_greeting` outputs `Hello! I'm  a cat!`.
This has happened because `::generic_greeting` is a class method 
being invoked on return value of `kitty.class`, which is `Cat`.
=end
