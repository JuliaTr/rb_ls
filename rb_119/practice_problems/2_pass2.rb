=begin
Problem 2

Create a method that takes an array of integers as an argument.
The method should return the minimum sum of 5 consecutive numbers in the array.
If the array contains fewer than 5 elements, the method should return nil.

minimum sum of 5 consecutive numbers

[1, 2, 3, 4, 5, -5]
[1, 2, 3, 4, 5]  15
[2, 3, 4, 5, -5]  9 v

R:
- fewer than 5 elements, the method should return nil

D:
I: arr
O: integer
Int: generate subarrays, slice, range, indexes, array

Idea1:
- Generate subarrays with 5 elem
- Select with 5 elements
- Calc sum
- Minimum

0...arr.size 'idx'
  arr.slice(idx, 5)

=end

## Solution
def substrings(arr)
  substrings = []
  (0...arr.size).each do |idx|
    substrings << arr.slice(idx, 5)
  end
  substrings
end

def minimum_sum(arr)
  return nil if arr.size < 5

  substrings = substrings(arr)
  selected = substrings.select { |subarrays| subarrays.size == 5 }

  selected.map(&:sum).sort[0]
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
# All test cases return `true`
