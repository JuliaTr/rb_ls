# 6. Create a method that takes an array of integers and returns an array containing all pairs of numbers in the original array that sum to an even number. Each pair should be sorted in ascending order, and the entire array of pairs should be sorted by the first element of each pair.

=begin
even_sum_pairs([1, 2, 3, 4, 5]) == [[1, 1], [1, 3], [1, 5], [2, 2], [2, 4], [3, 3], [3, 5], [4, 4], [5, 5]]

[1, 1] -> 2
[1, 3] -> 4
[1, 5] -> 6

even_sum_pairs([4, 3, 6, 7]) == [[3, 3], [3, 7], [4, 4], [4, 6], [6, 6], [7, 7]]

P
Return pairs which sum is even number

Rules:
- empty array -> empty array

D
Input: array of integers
Output: array of pairs

High-level
Iterate over input array. Create pairs. Check if pais have even sum.
If yes, add it to new array. Sort outer and nested arrays.

Algo:
Iterate over input array.
Input: input array
Output: nested array with pairs

[1, 2, 3, 4, 5]
  ^
  [1, 2, 3, 4, 5]
   ^

[1, 1], [1, 3], [1, 5]

- Create `result`
- Iterate over indexes from 0 upto array size - 1 (`first`)
  - Iterate over 0 upto array size - 1 (`second`)
    - If [arr[first], arr[second]] sum is even
      - Push [arr[first], arr[second]] to result
- Return `result`

Sort
=end

def pairs(arr)
  result = []

  0.upto(arr.size - 1) do |first|
    first.upto(arr.size - 1) do |second|
      if [arr[first], arr[second]].sum.even?
        result << [arr[first], arr[second]].sort
      end
    end
  end

  result
end

def even_sum_pairs(arr)
  return arr if arr.empty?
  pairs = pairs(arr)
  pairs.sort
end

p even_sum_pairs([1, 2, 3, 4, 5]) == [[1, 1], [1, 3], [1, 5], [2, 2], [2, 4], [3, 3], [3, 5], [4, 4], [5, 5]]
p even_sum_pairs([4, 3, 6, 7]) == [[3, 3], [3, 7], [4, 4], [4, 6], [6, 6], [7, 7]]
p even_sum_pairs([]) == []
# All test cases return `true`.
