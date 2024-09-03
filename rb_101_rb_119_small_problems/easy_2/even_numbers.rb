=begin

PROBLEM
Print all even numbers from 1 to 99, inclusive, to the 
console, with each number on a separate line.

________________________________________________________

PEDAC

Problem:
  - Input: No
  - Output: integer objects

  - Rules:
    - Explicit:
       - Print even numbers from 1 to 99, inclusive.
       - Each number should be on a separate line.

    - Implicit:
      - Numbers are positive integers.

  - Assumptions:
    - No

Examples an Test Cases:
  - No

Data Structure:
  - No
  - An integer will be used.

Algorithm:
  - Initialiase a variable `number`
  - Loop while all even numbers from 1 to 99 are outputed.
=end

number = 2
while number <= 99
  number = number + 2
  puts number
end



## From the exercise:

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

