=begin
PROBLEM
Generate all possible pairs of the array, but only in ascending 
order (that is, the element earlier in the argued array should 
come first in its subarray).

_____________________________________________________________

PEDAC

P 
Return nested array with pairs in ascending order

Rules/Reqs:
- the next element has pairs only with the next elements, not 
  from the start of the array

D
Input: array
Output: nested array
Intemediate:
- array to store a pair
- integer to iterate over indexes

High-level/algo:
- Create `pairs`
- Iterate over indexes from 0 upto array length - 2 (first_index)
  - Iterate over indexes from `first_index` upto array length - 2 (second_index)
    - Add pair to `pairs`
- Return `pairs`

eg
[1, 2, 3, 4, 5]
 ^ 
  [1, 2, 3, 4, 5]
               ^ 
pair = [arr[first_index], arr[second_index + 1]]
pair => [1, 2]
=end

def all_ascending_pairs(arr)
  pairs = []

  0.upto(arr.size - 2) do |first_index|
    first_index.upto(arr.size - 2) do |second_index|
      pairs << [arr[first_index], arr[second_index + 1]]
    end
  end

  pairs 
end

sample = [1, 2, 3, 4, 5]
p all_ascending_pairs(sample) == [[1, 2], [1, 3], [1, 4], [1, 5],
                                 [2, 3], [2, 4], [2, 5],
                                 [3, 4], [3, 5],
                                 [4, 5]]  # true
