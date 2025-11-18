# took 5 mins

=begin
Create a method that takes an array of integers as an argument 
and returns the integer that appears an odd number of times. 
There will always be exactly one such integer in the input array.

P
Return integer which appears odd number of times

Rules:
- 1 integer -> return it
- all test cases show 

D
Input: array
Output: integer
Intermediate:
- array: ---
- hash: count how many times integer appears
- integer: ---
- boolean: ---
- string: ---

High-level:
- Create hash to count how many times integer appears in input array
- Select odd values
- Sort and find minimum

=end

def odd_fellow(arr)
  arr.tally.select { |_, val| val.odd? }.values.min
end

p odd_fellow([4]) == 4
p odd_fellow([7, 99, 7, 51, 99]) == 51
p odd_fellow([7, 99, 7, 51, 99, 7, 51]) == 7
p odd_fellow([25, 10, -6, 10, 25, 10, -6, 10, -6]) == -6
p odd_fellow([0, 0, 0]) == 0
# All test cases return `true`.
