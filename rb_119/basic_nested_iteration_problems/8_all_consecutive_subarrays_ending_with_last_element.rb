# 6 mins

=begin
Generate all consecutive subarrays ending with the last array 
element.

_____________

PEDAC

P
All consecutive subarrays with ending last element

Rules/reqs:
- last element is alone

D
Input: array
Output: nested array
Intermediate:
- array: store subarray
- integer: iterate over indexes

High-level/algo:
- Create `subarrays`
- Iterate over 0 index upto array size - 1 (index)
  - Add subarray `[index..-1]` to `subarrays`
- Return `subarrays`

eg
[1, 2, 3, 4, 5]
 ^

[index..-1]
=end

def last_subarrays(arr)
  subarrays = []

  0.upto(arr.size - 1) do |index|
    subarrays << arr[index..-1]
  end

  subarrays
end

sample = [1, 2, 3, 4, 5]
p last_subarrays(sample) == [[1, 2, 3, 4, 5], [2, 3, 4, 5], [3, 4, 5], [4, 5], [5]]
