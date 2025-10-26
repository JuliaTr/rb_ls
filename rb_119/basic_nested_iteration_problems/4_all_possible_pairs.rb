=begin
PROBLEM
Generate all possible pairs of the array.

___________________________________________________________

PEDAC

P
Return a nested array with all possible pair.

Rules/reqs:
- no duplicate elements in a pair
- each element with each

D
Input: array
Output: nested array
Intermediate:
- array to store pairs
- integer to store index

High-level/algo:
- Create `pairs`
- Iterate over indexes 0 upto array length - 1 (first_index)
  - Iterate over indexes 0 upto array length - 1  (second_index)
    - if `first_index` equal `second_index`
      - next
    - else
      - Add element with `first_index` and element with `second_index`
        to `pairs`
- Return `pairs`

eg
[[1, 2], [1, 3]....]
[1, 2, 3, 4, 5]
    ^
  [1, 2, 3, 4, 5]
               ^
[1, 3]
=end

def all_pairs(arr)
  pairs = []

  0.upto(arr.size - 1) do |first_index|
    0.upto(arr.size - 1) do |second_index|
      next if first_index == second_index 
      pairs << [arr[first_index], arr[second_index]]
    end
  end

  pairs
end

sample = [1, 2, 3, 4, 5]
p all_pairs(sample) == [[1, 2], [1, 3], [1, 4], [1, 5],
                        [2, 1], [2, 3], [2, 4], [2, 5],
                        [3, 1], [3, 2], [3, 4], [3, 5],
                        [4, 1], [4, 2], [4, 3], [4, 5],
                        [5, 1], [5, 2], [5, 3], [5, 4]]  # true
