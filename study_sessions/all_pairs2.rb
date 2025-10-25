# Return all pairs of numbers from a given array of numbers that have a difference of 2.
# Assume there are no duplicate numbers in the array.
# The order of the numbers in the input array should not matter.

=begin
P
Return a nested array with all pairs of integers with difference of 2.

D
Input: array of integers
Output: boolean 
Return: nested array of arrays
Intermediate:
- array of all pairs
  e.g [[1, 2], [1, 4].....[2, 4], [2, 5]....]

High-level:
- Find all pairs (helper)
- Select pairs which have difference of 2 (main)

Helper: Find all pairs
Input: Array
Intermediate: range to iterate over indexes
Return: nested array of all pairs
Algorithm:
- Create PAIRS empty array
- Iterate form 0 upto array length - 1 (use index)
  - Each index pairs with the next index
    - Add start_index and the second_index to PAIRS
- Return PAIRS

Algo:
- Call helper Find all pairs
- Iterate over Find all pairs return value
  - select pairs which second number is less than 2 to the first number
    e.g 3 - 1 = 2 (meets criteria)
- Sort nested array in ascending order 
=end

# [1, 2, 3]
# [1, 2] [1, 3] [2, 3]
  #^
  #0  1
  
# start_index - 0
# end_index - 1


def find_all_pairs(array)
  pairs = []

  0.upto(array.size - 2) do |start_index| # 0 1 
    (start_index + 1).upto(array.size - 1) do |end_index| # 1 2
      pairs << [array[start_index], array[end_index]]
    end
  end

  pairs
end

def difference_of_two(array)
  pairs = find_all_pairs(array)

  pairs.select do |pair| 
    difference = pair[1] - pair[0]
    difference.abs == 2
  end.sort
end

# p difference_of_two([1, 2, 3]) # [1, 2] [1, 3] [2, 3]

p difference_of_two([1, 2, 4, 5, 7, 3, 6]) == [[1, 3], [2, 4], [4, 6], [5, 3], [5, 7]]
p difference_of_two([1, 2, 9, 4, 0, 7]) == [[2, 0], [2, 4], [9, 7]]
