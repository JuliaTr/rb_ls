=begin

PROBLEM

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s,
always starting with 1. The length od the string should match the given integer.
The tests should print `true`.

TEST CASES

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

_______________________________________________________________________________

PEDAC

Problem:
  - Input: integer object
  - Output: string of alternaing 1s and 0s

  - Rules:
    - Explicit: 
      - Return a string of alternating 1s and 0s, always starting with 1
      - The length of the string should match the given integer
      - The tests should print `true` 

    - Implicit:
      - There's a repeated pattern of the return value of '10'

Examples and Test Cases:
  - Test cases all conform to stated rules

Data Structure:
  - Array

Algorithm:
  - Define a method called `stringy` that has one parameter `int`
  - Create a new array to build
  - Iterate with 1s and 0s number of times indicated by `int`
    - Push each character to a new array if length of the string less than the `int`
  - Return a string 
=end

def stringy(int)
  result = []
  
  int.times do |index|
    number = index.even? ? 1 : 0
    result << number
  end

  result.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
