# took 12 mins including reloading notebook

=begin
Create a method that takes an array of numbers, all of which are 
the same except one. Find and return the number in the array 
that differs from all the rest.

The array will always contain at least 3 numbers, and there will 
always be exactly one number that is different.

P
find number, which doesn't repeat

Rules:
- one number doesn't repeat

D
Input: array
Output: integer
Intermediate:
-

High-level:
- Find occurrences of all numbers
- Return which doesn't repeat

- Find uniq numbers  X


Find occurrences of all numbers:
Input: array
Output: hash

Select key-value pair which value is 1
Input: hash
Output: hash

Return kay
=end

def occurrences(arr)
  arr.each_with_object(Hash.new(0)) do |value, hash|
    hash[value] += 1
  end
end

def what_is_different(arr)
  hash = occurrences(arr)
  hash.select { |_, value| value == 1 }.keys[0]
end

p what_is_different([0, 1, 0]) == 1
p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
p what_is_different([3, 4, 4, 4]) == 3
p what_is_different([4, 4, 4, 3]) == 3
