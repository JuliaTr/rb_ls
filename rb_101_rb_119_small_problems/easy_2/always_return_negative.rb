=begin

PROBLEM
Write a method that takes a number as an argument. 
If the argument is a positive number, return the negative of that number.
If the number is 0 or negative, return the original number.

TEST CASES
# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in Ruby

_________________________________________________________________________

PEDAC

Problem:
  - Input: An integer object.
  - Output: Return a negative number.

  - Rules:
    - Explicit:
      - If the argument is a positive number, return the 
        negative of that number.
      - If the number is 0 or negative, return the original 
        number.
    - Implicit:
     - No

  - Assumptions:
    - No

Examples and Test Cases:
  - All test cases conform to the rules.

Data Structure:
  - (?)

Algorithm:
  - Define a method called `negative` that takes one parameter `number`.
  - If the argument `number <= 0`, return the `number`.
  - If the argument `number > 0` return an oposite negative integer.
=end

# With ternary expression:
def negative(number)
  number <= 0 ? number : (number * (-1))
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0


def negative(number)
  if number <= 0
    number
  else
    number * (-1)
  end
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
=begin
$ ruby always_return_negative.rb
-5
-3
0
$ ruby always_return_negative.rb
true
true
true
=end


## Further exploration:

def negative(number)
  -number.abs
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
