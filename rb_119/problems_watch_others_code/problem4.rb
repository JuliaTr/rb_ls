=begin
PROBLEM:
The maximum sum subarray problem consists in finding the maximum 
sum of a contiguous subsequence in the array of integers

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
– should be 6 [4, -1, 2, 1]

Easy caseis when the array is made up of only positive numbers 
and the maximum sum is the sum of the whole array. If the array
is made up of only repetitive numbers, return 0 instead.

Empty array is considered to have zero greatest sum. Note that
the empry array is also a valid subarray.

_____________________________________________________________
PEDAC

Problem:
Find the subarray in an array that contains the largest sum.

Reqs/rules:
- The subarray can be any length.
- If all numbers are positive, return a simple sum.
- If all numbers are negative, return 0.

Input: array
Output: integer

Examples:
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

Data:
Arrays to create all possible subarrays 

High-level:
- Create all possible subarrays
- Find sum for each subarray
- Find the maximum sum

Algorithm:
- result array = []
- Iterate form 0 to length of the array
  - Iterate from first index to length of the array (second index represents the ending of the subarray)
    - Add an array that ranges from first index to the second 
      index to the result array
- Iterate through result array
  - Collect sum of all the subarrays
- Find the maximum sum of subarrays
=end

# Step 3:
def max_sequence(array)
  return 0 if array.all? { |number| number < 0 }

  result = []

  (0..array.size - 1).each do |index1|
    (index1..array.size - 1).each do |index2|
      result << array[index1..index2]
    end
  end

  result.max_by { |subarray| subarray.sum }.sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
# All test cases return `true`. 


# Step 2:
def max_sequence(array)
  result = []

  (0..array.size - 1).each do |index1|
    (index1..array.size - 1).each do |index2|
      p result << array[index1..index2]
    end
  end

  result.max_by { |subarray| subarray.sum }
end

p max_sequence([-2, 1, -3]) 
=begin
[[-2]]
[[-2], [-2, 1]]
[[-2], [-2, 1], [-2, 1, -3]]
[[-2], [-2, 1], [-2, 1, -3], [1]]
[[-2], [-2, 1], [-2, 1, -3], [1], [1, -3]]
[[-2], [-2, 1], [-2, 1, -3], [1], [1, -3], [-3]]
[1]
=end


# Step 1:
def max_sequence(array)
  result = []

  (0..array.size - 1).each do |index1|
    (index1..array.size - 1).each do |index2|
      result << array[index1..index2]
    end
  end

  result
end

p max_sequence([-2, 1, -3]) 
# [[-2], [-2, 1], [-2, 1, -3], [1], [1, -3], [-3]]

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])
=begin
[[-2], [-2, 1], [-2, 1, -3], [-2, 1, -3, 4], [-2, 1, -3, 4, -1], 
[-2, 1, -3, 4, -1, 2], [-2, 1, -3, 4, -1, 2, 1], 
[-2, 1, -3, 4, -1, 2, 1, -5], [-2, 1, -3, 4, -1, 2, 1, -5, 4], 
[1], [1, -3], [1, -3, 4], [1, -3, 4, -1], [1, -3, 4, -1, 2], 
[1, -3, 4, -1, 2, 1], [1, -3, 4, -1, 2, 1, -5], 
[1, -3, 4, -1, 2, 1, -5, 4], [-3], [-3, 4], [-3, 4, -1], 
[-3, 4, -1, 2], [-3, 4, -1, 2, 1], [-3, 4, -1, 2, 1, -5], 
[-3, 4, -1, 2, 1, -5, 4], [4], [4, -1], [4, -1, 2], 
[4, -1, 2, 1], [4, -1, 2, 1, -5], [4, -1, 2, 1, -5, 4], 
[-1], [-1, 2], [-1, 2, 1], [-1, 2, 1, -5], [-1, 2, 1, -5, 4], 
[2], [2, 1], [2, 1, -5], [2, 1, -5, 4], [1], [1, -5], 
[1, -5, 4], [-5], [-5, 4], [4]]
=end
