# took 15 mins

=begin
Create a method that takes an array of integers as an argument. 
The method should return the minimum sum of 5 consecutive numbers 
in the array. If the array contains fewer than 5 elements, the 
method should return `nil`.

P
Return min sum of 5 consecutive numbers

Rules:
- < 5 elements -> nil
- sum of 5 consecutive numbers

D
Input: array
Output: integer

High-level:
- If array length < 5, return `nil`  V
- Find all consecutive subarrays     V
- Find subarray with 5 elements      V
- Calculate sum of subarrays
- Return min sum

Find all consecutive subarrays:
Input: array
Output: nested array
Intermediate:
- integer: iterate over index

[1, 2, 3, 4, 5, -5]
    ^
  [1, 2, 3, 4, 5, -5]
            ^

[[1], [1, 2], [1, 2, 3]....
 [2], [2, 3], [2, 3, 4]...]

Algo:
- create `result`
- Iterate from 0 upto array length - 1 (`first`)
  - Iterate from `first` upto array length - 1 (`second`)
    - Add arr[first..second] to `result`
- return `result`

=end

def subarrays(arr)
  result = []

  0.upto(arr.length - 1) do |first|
    first.upto(arr.length - 1) do |second|
      result << arr[first..second]
    end
  end

  result
end

def minimum_sum(arr)
  return nil if arr.length < 5

  subarrays = subarrays(arr)

  subarrays.select { |subarray| subarray.length == 5 }
           .map(&:sum)
           .min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
# all test cases return `true`
