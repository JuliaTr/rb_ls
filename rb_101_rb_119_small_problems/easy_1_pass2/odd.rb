=begin
Write a method that takes one integer argument, which may be positive, 
negative, or zero. This method returns `true` if the number's 
absolute value is odd. You may assume that the argument is a 
valid integer value. Not allowed to use `#odd?` or `#even?` 
in your solution.

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
=end

def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true



## Possible solution:
def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true



### Further exploration:
# `Integer#remainder`:
def is_odd?(number)
  if number < 0
    number.remainder(2) == -1
  else
    number.remainder(2) == 1
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


#### Experiment:
# `Integer#remainder`, `Integer#abs` (refactored):
def is_odd?(number)
  number.remainder(2).abs == 1   
end

# Odd number doesn't divide evenly by 2 and has a remainder.

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
