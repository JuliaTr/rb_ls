=begin
Create a method that takes an array of integers as an argument. 
Determine and return the index N for which all numbers with an 
index less than N sum to the same value as the numbers with an 
index greater than N. If there is no index that would make this 
happen, return -1.

If you are given an array with multiple answers, return the 
index with the smallest value.

The sum of the numbers to the left of index 0 is 0. Likewise, 
the sum of the numbers to the right of the last element is 0.


([1, 2, 4, 4, 2, 3, 2]) == 3
  0  1  2  3  4  5  6

  1 + 2 + 4 = 7      4
  2 + 3 + 2 = 7


([7, 99, 51, -48, 0, 4]) == 1
  0   1   2    3  4  5

  7                          99
  51 + (-48) + 0 + 4 = 7


([17, 20, 5, -60, 10, 25]) == 0

20 + 5 + (-60) + 10 + 25 = 0


[0, 2, 4, 4, 2, 3, 2] == -1

2 + 4 + 4 + 2 + 3 + 2 = 17
0, 2   4, 2, 3, 2      2  > 2
0, 2, 4   2, 3, 2      6  > 6
0, 2, 4, 4   3, 2      10  < 10

P
Return index of number for which the sum of integers to the left
is the same as the sum of integers to the right

Rules:
- if there no sum to the left and right equal, return -1
- return the smallest correct index

D
Input: array
Output: integer
Intermediate:
- array: generate subarrays


High-level:
- Generate subarrays
- Calculate sum for subarray
- Sum of subarray compare with the sum of the rest of the array escept 
  the leading element of this rest of the array


Generate subarrays:
Input: array
Output: nested array
Intermediate:
- integer: to iterate
- array: nested arrays

Algo:
- Create `result` empty array
- Iterate from 0 upto array size - 1 (`index`)
  - Add arr[0..index] to `result`
- Return `result`

[1, 2, 4, 4, 2, 3, 2]
 ^

[[1], [1, 2], [1. 2, 3]]


=end

def equal_sum_index(arr)
  left_arr = []
  0.upto(arr.size - 1) do |index|
    if arr[0..index].size == 1 && 
        left_arr.sum == arr[index + 1..-1].sum
      return index
    elsif !arr[index + 1].nil? && arr[0..index].sum == arr[index + 2..-1].sum
      return index + 1
    end
  end

  - 1
end

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
p equal_sum_index([0, 2, 4, 4, 2, 3, 2]) == -1

# The following test case could return 0 or 3. Since we're
# supposed to return the smallest correct index, the correct
# return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0
# All test cases return `true`
