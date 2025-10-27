=begin
Generate all consecutive subarrays beginning from the first 
array element.

___________________________

PEDAC

P
Return a nestted array with all consecutive subarrays.

Rules/reqs:
- first subarray only 1 integer

D
Input: array
Output: nested array
Intermediate:
- array: store subarray
- integer: iterate over indexes

High-level:
- Create new empty array
- Iterate over indexes
  - Create subarray from 0 index to index which will be incremented
- Return new array

Algo:
- Create `subarrays`
- Iterate over indexes 0 upto array length - 1
  - Add subarray [0..index] to `subarrays`
- Return `subarrays`

eg
[1, 2, 3, 4, 5]
 ^
[0..index]
=end

def first_subarrays(arr)
  subarrays = []

  0.upto(arr.size - 1) do |index|
    subarrays << arr[0..index]
  end

  subarrays
end

sample = [1, 2, 3, 4, 5]
p first_subarrays(sample) == [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5]]
