=begin
Given the class below, if we created a new instance of the class 
and then called `to_s` on that instance we would get something 
like `"#<Cat:0x007ff39b356d30>"`.
=end

class Cat
  def initialize(type)
    @type = type
  end
end

tabby = Cat.new('tabby')
p tabby.to_s   # "#<Cat:0x0000000104a65a40>"



## Solution
# Option 1:
class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{@type} cat"
  end
end

tabby = Cat.new('tabby')
tabby.to_s    # I am a tabby cat

p tabby.type
=begin
undefined method `type' for #<Cat:0x000000010e985378 
@type="tabby"> (NoMethodError)

`NoMethodError` has happened because we don't have a getter method `type`.
We access type by referencing `@type` instance variable inside a class.
=end


# Option 2:
class Cat
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{type} cat"  # getter is used
  end
end

tabby = Cat.new('tabby')
tabby.to_s                     # I am a tabby cat

p tabby.type                   # "tabby"   

=begin
The `@type` instance variable can be accessed outside of the 
class.because of `attr_reader` (line 45), which creates `type` getter method 
we invoke on `tabby` (line 59).
=end



# `display_type` is better to use insted of `to_s` for these purposes:
class Cat
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def display_type
    puts "I am a #{type} cat"
  end
end

tabby = Cat.new('tabby')
tabby.display_type  # I am a tabby cat
