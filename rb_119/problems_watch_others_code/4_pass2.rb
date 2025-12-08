# took 22 mins to solve

=begin
PROBLEM:
The maximum sum subarray problem consists in finding the maximum 
sum of a contiguous subsequence in the array of integers

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
– should be 6 [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers 
and the maximum sum is the sum of the whole array. If the array
is made up of only negative numbers, return 0 instead.

Empty array is considered to have zero greatest sum. Note that
the empty array is also a valid subarray.

________________________________________

P
Return maximim sum of a subarray.

Rules:
- if negative -> 0
- if empty -> 0
- if 1-element array, return value

High-level:
- Generate subarrays
Input: array
Output: array of substrings

- Finding the maximum sum of each subarray
Input: array of substrings
Output: hash

- Sort by value
Input: hash
Output: sorted new hash

- Return value


[-2, 1, -3, 4, -1, 2, 1, -5, 4]
           [4, -1, 2, 1]

[-2, 1, -3, 4, -1, 2, 1, -5, 4]
     ^
  [-2, 1, -3, 4, -1, 2, 1, -5, 4]
                               ^


=end

def substrings(arr)
  result = []
  0.upto(arr.size - 1) do |first_idx|
    first_idx.upto(arr.size - 1) do |second_idx|
      result << arr[first_idx..second_idx]
    end
  end
  result
end

def return_hash_with_sum(arr)
  hash = {}
  arr.each do |substring|
    hash[substring] = substring.sum
  end
  hash
end

def max_sequence(arr)
  return 0 if arr.empty? || arr.all? { |val| val < 0 }
  return arr[0] if arr.size == 1

  substrings = substrings(arr)
  hash = return_hash_with_sum(substrings)
  hash.sort_by { |_, val| val }.last[1]
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
# All test cases return `true`.



## Learn from others:
def max_sequence(arr)
  return 0 if arr.all? { |val| val < 0 }   # return 0 for `[]`

  result = []
  (0..arr.size - 1).each do |first_idx|
    (first_idx..arr.size - 1).each do |second_idx|
      result << arr[first_idx..second_idx]
    end
  end

  # Returns subarray with maximum sum.
  # Calculate sum of this subarray.
  result.max_by { |subarray| subarray.sum }.sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
# All test cases return `true`.
