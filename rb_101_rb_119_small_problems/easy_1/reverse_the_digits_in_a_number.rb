=begin

PROBLEM
Write a method that takes a positive integer as an argument 
and returns that number with its digits reversed.
Ruby sees those arguments with leading zeros as octal numbers, 
which will cause confusing results. 
For similar reasons, the return value for our fourth example doesn't 
have any leading zeros.

TEST CASES
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

_________________________________________________________________________________________________

PEDAC

Problem:
  - Input: an integer object
  - Ouput: return a number with its digits reversed

  - Rules:
    - Explicit:
      - The integer as an INPUT should be positive.
      - The the value should be returned, not printed or outputted.
      - The digits of the integer object should be returned reversed.

    - Implicit:
      - Should the return value be an integer?
      - Or should the return value be a string?

Examples and Test Cases:
  - All test cases conform to the rules. 

Data Structure:
  - Array

Algorithm:
  - Define a method called `reversed_number` that takes one parameter `number`.
  - Return an array of digits in a reversed order.
  - Join the array elements to a string
  - Convert a string to integer.
  - Return a reversed number of digits.
=end

def reversed_number(number)
  number.digits.join.to_i
end

p reversed_number(12345) == 54321  # true
p reversed_number(12213) == 31221  # true
p reversed_number(456) == 654      # true
p reversed_number(12000) == 21 # No leading zeros in return value!  # true
p reversed_number(12003) == 30021  # true
p reversed_number(1) == 1          # true


## Solution from the exercise

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

