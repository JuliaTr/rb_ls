=begin
(SPOT study session)

Problem 1:
Create a method that takes an array of numbers as an 
argument. For each number, determine how many numbers in the
array are smaller than it, and place the answer in an array. 
Return the resulting array.

When counting numbers, only count unique values. That is, 
if a number occurs multiple times in the array, it should only 
be counted once.

_____________________________________________________________

P
Return array of integers of counts. For each integer in input 
array count how many integers are smaller.

Rules/ reqs:
- capture and count against array of unique numbers
- don't count duplicates, count only unique values; if number 
  occurs multiple times, we count in once.
- for duplicated numbers we still look for smaller numbers 
  and count them
- a new array should have the same number of elements as the 
  original


D
Input: array of values
Output: new array of counts
Intermediate:
- strings  X
- arrays  X
- integer to go upto array length - 1 (for iteration over 
  indexes) X
- integer to count values less than the current one
- range to iterate over indexes  X
- boolean X
- hash X

High-level:
- Create new array to store counts of values less than 
  current value 
- Iterate over each value in input array (outer_value)
  - Create `count` equal to 0 var to store counts
  - Iterate over each unique value from the first one till 
    the end of the array
    - if the inner_value is less than the outer_value 
      - increment count
- Return new array

eg. 
input: [8, 1, 2, 2, 3]
[8, 1, 2, 2, 3]
             ^
  [8, 1, 2, 3]
            ^
output:[3, 0, 1, 1, 2]

eg. 
input: [6, 5, 4, 8]
[6, 5, 4, 8]
          ^
  [6, 5, 4, 8]
         ^
output: [3]

=end

=begin
- Create new array to store counts of values less than current value 
- Iterate over each value in input array (outer_value)
  - Create `count` equal to 0 var to store counts
  - Iterate over each unique value from the first one till the end of the array
    - if the inner_value is less than the outer_value 
      - increment count
- Return new array
=end

def smaller_numbers_than_current(array)
  array.map do |outer_value|
    counts = 0
    array.uniq.each do |inner_value|
      counts += 1 if inner_value < outer_value
    end
    counts
  end
end

# Examples
p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result

# All test cases print `true`.
