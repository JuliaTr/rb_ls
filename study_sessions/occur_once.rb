=begin
Print all even numbers from 1 to 99, AND only print the number 
if it's divisible by 7, to the console, with each number on a 
separate line.

Even_numbers = (1..99).select { |num| num.even? && num % 7 == 0 }
puts even_numbers


Given an array of integers, return the integer that only occurs 
once in the array.


PEDAC:
P: write a method that returns an integer, which occur only once in the Array

Input: array of integers
Output: Integer

Reqs/rules:
- array contain inteegers that occur more than once and other occur once

Test case:
[3, 4, 5, 2, 3, 4, 5, 2, 1] == 1

Algorithm:
- Define a method `return_single_integer` which take an array as an argument
- Iterate over Array
- Create a empty hash to store the occurence of each Integer
- Take all values from hash and find minimum
=end

def return_single_integer(array)
  new_hash = array.each_with_object({}) do |number, hash|
    hash[number] = hash[number].to_i + 1
  end
  p new_hash

  selected_key_value_pair = new_hash.select do |_, value|
    value == 1
  end
  p selected_key_value_pair

  selected_key_value_pair.keys[0]
end

array = [3, 4, 5, 2, 3, 4, 5, 2, 9]
p return_single_integer(array) == 9
