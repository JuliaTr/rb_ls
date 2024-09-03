=begin

PROBLEM
Print all odd numbers from 1 to 99, inclusive, to the 
console, with each number on a separate line.

____________________________________________________

PEDAC

Problem:
  - Input: No
  - Output: integer objects

  - Rules:
    - Explicit:
       - Print odd numbers from 1 to 99, inclusive.
       - Each number should be on a separate line.

    - Implicit:
      - Number are positive integers.

  - Assumptions:
    - No
    
Examples an Test Cases:
  - No

Data Structure:
  - No
  - A range will be used.

Algorithm:
  - Iterate over a range to output odd numbers from 1 to 99.
=end

(1..99).each do |num|
  puts num if num.odd?
end



## Further exploration:

# `Integer#upto`
1.upto(99) do |num|
  puts num if num.odd?
end

# `Array#select`
Array(1..99).select do |num|
  puts num 
  num = num + 2
end



## From exercise:

value = 1
while value <= 99
  puts value
  value += 2
end

