=begin

PROBLEM

Write a method that takes one integer argument, which may be positive, negative, or zero.
This method returns `true` if the number's absolute value is odd.
You may assume that the argument is a valid integer value. 
Keep in mind tha you're not allowed to use `#odd?` or `#even?` in your solution.

TEST CASES

puts is_odd?(2)   # => false
puts is_odd?(5)   # => true
puts is_odd?(-17) # => true
puts is_odd?(-8)  # => false
puts is_odd?(0)   # => false
puts is_odd?(7)   # => true

__________________________________________________________________________________________

PEDAC

Problem:
  - Input: integer object
  - Output: boolean value
  
  - Rules:
    - Expplicit: 
      - Integer argument may be posiive, negative, or zero
      - Return value is `true` if the number's absolute value is odd
      - Argument is a valid integer value
      - `#odd?` or `#even?` are not allowed to use

    - Implicit:
      - Return value is `false` if the number's absolute value is even

Examples and Test cases:
  - Test cases all conform to stated rules

Data Structure:
  - No

Algorithm:
  - Define a method called `is_odd?` with one parameter `number`
  - Check if the parameter modulo 2 is 1
  - Return a boolean value
=end

def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)   # => false
puts is_odd?(5)   # => true
puts is_odd?(-17) # => true
puts is_odd?(-8)  # => false
puts is_odd?(0)   # => false
puts is_odd?(7)   # => true



## Experiments:

def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)   # => false
puts is_odd?(5)   # => true
puts is_odd?(-17) # => true
puts is_odd?(-8)  # => false
puts is_odd?(0)   # => false
puts is_odd?(7)   # => true



## Further exploration

def is_odd?(number)
  number.remainder(2) > 0 || number.remainder(2) < 0
end

puts is_odd?(2)   # => false
puts is_odd?(5)   # => true
puts is_odd?(-17) # => true
puts is_odd?(-8)  # => false
puts is_odd?(0)   # => false
puts is_odd?(7)   # => true