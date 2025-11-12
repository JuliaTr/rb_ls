=begin
Write a method that takes an Array of numbers, and returns an 
Array with the same number of elements, and each element has the 
running total from the original Array. 

A running total is the sum of all values in a list up to and 
including the current element. Thus, the running total when 
looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), 
while the running total at index 3 is 47 (14 + 11 + 7 + 15).


P
Return running total for all integers in array

Rules:
- empty ? -> empty array
- one element -> return 1 element array

[2, 5, 13] -> [2, 7, 20]
[14, 11, 7, 15, 20] -> [14, 25, 32....]

D
Input: array
Output: array with running totals
Intermediate:
- nested array

High-level:
- Subarrays (from first till the end of array)
- Calculate sum of each subarray (map) #map

Subarrays (from first till the end of array)
Input: array
Output: neasted array
Intermediate:
- integer to iterate through indexes

A
- Create new array
- Iterate through index 0 upto array length - 1
  - Add arr[0..index] to new array
- Return new array

[2, 5, 13]
 ^
 [[2], [2, 5], [2, 5, 13]]
=end

def subarrays(arr)
  result = []

  0.upto(arr.length - 1) do |index|
    result << arr[0..index]
  end

  result
end

def running_total(arr)
  subarrays = subarrays(arr)
  subarrays.map(&:sum)

  # `subarrays.map(&:sum)` is the same as:
  # # [[2], [2, 5], [2, 5, 13]]
  # subarrays.map do |subarray| # [2] [2, 5] ...

  #   subarray.sum
  #   # [2].sum -> 2
  #   # [2, 5].sum -> 7
  # end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
