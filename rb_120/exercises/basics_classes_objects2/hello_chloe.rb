=begin
Using the following code, add an instance method named #rename 
that renames kitty when invoked.
=end

## Possible solution
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name    # syntactical sugar for `self.name=(new_name)`
  end
end

kitty = Cat.new('Sophie')
puts kitty.name              # Sophie

kitty.rename('Chloe')
puts kitty.name              # Chloe




## Solution
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(name)         # instance method that changes state
    @name = name
  end
end

kitty = Cat.new('Sophie')
puts kitty.name            # Sophie

# using the regular instance method
kitty.rename('Chloe')
puts kitty.name            # Chloe

# using the conventional setter method from `attr_accessor`
kitty.name = 'Bella'
puts kitty.name            # Bella

=begin
The `#rename` method acts like a setter because it modifies the 
object's state. Howwever, it's considered a regular instance meethod.
=end
