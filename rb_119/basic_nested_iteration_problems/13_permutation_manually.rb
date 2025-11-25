=begin
Generate all subarray permutations of the array - all subarrays, 
consecutive or not, in any order.
=end
def sub_permutations(arr)
  result = []
  (1..arr.size).each do |number|
    arr.permutation(number) { |permutation| result << permutation }
  end
  result.sort
end

sample = [1, 2, 3]
p sub_permutations(sample) == [[1], [1, 2], [1, 2, 3], [1, 3], [1, 3, 2],
                               [2], [2, 1], [2, 1, 3], [2, 3], [2, 3, 1],
                               [3], [3, 1], [3, 1, 2], [3, 2], [3, 2, 1]]
# true



## Experiment with `combination` method:
def sub_combinations(arr)
  result = []
  (1..arr.size).each do |number|
    arr.combination(number) { |combination| result << combination }
  end
  result.sort
end

sample = [1, 2, 3]
p sub_combinations(sample)  
# [[1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]]

sample1 = [1, 2, 3, 4, 5]
p sub_combinations(sample1)
# [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5], 
# [1, 2, 3, 5], [1, 2, 4], [1, 2, 4, 5], [1, 2, 5], [1, 3], 
# [1, 3, 4], [1, 3, 4, 5], [1, 3, 5], [1, 4], [1, 4, 5], [1, 5], 
# [2], [2, 3], [2, 3, 4], [2, 3, 4, 5], [2, 3, 5], [2, 4], 
# [2, 4, 5], [2, 5], 
# [3], [3, 4], [3, 4, 5], [3, 5], 
# [4], [4, 5], [5]]



### Experiments (in progress):
=begin
PEDAC

P 
Find all possible subarrays consecutive and not.

Rules/reqs:
- subarray order doesn't matter

D
Input: array
Output: nested array
Intemediate:
- array: subarray
- integer: iterate over indexes to find consecutive subarrays

High-level:
- Find consecutive subarrays without repeating itself
  eg [1], [1, 2], [1, 2, 3]
- Find first and last elements
  eg [1, 3]
- Build subarray with first-last-second element
  eg [3, 2, 1]
- Build subarray with skipping itself
  eg [2, 1, 3], [3, 1, 2], [3, 2, 1]
-
  eg [2, 3, 1], [3, 2, 1]


Find consecutive subarrays without repeating itself:
Algo:
- Iterate over 0 index upto array size - 1 (first_index)
  - Iterate over `first_index` upto array size - 1 (second_index)
    - Add `[first_index..second_index]` to `subarrays`

eg 
[1, 2, 3]  first_index
    ^
[1, 2, 3]  second_index
    ^

[first_index..last_index]
[1], [1, 2], [1, 2, 3]
[2], [2, 3]

Main method:
- Create empty array `subarrays` 
- Find consecutive subarrays without repeating itself
- Find first and last elements
- Build subarray with first-last-second element
- Build subarray with skipping itself
- Return `subarrays`

=end

def sub_permutations(arr)
  subarrays = []

  # Find consecutive subarrays without repeating itself
  0.upto(arr.size - 1) do |first_index|
    first_index.upto(arr.size - 1) do |second_index|
      subarray = arr[first_index..second_index]
      subarrays << subarray

      # Build subarray with first-last-second element
      subarrays << subarray.reverse if subarray.size > 1


    end
  end

  # Find first and last elements
  subarray_first_last = [arr.first, arr.last]
  subarrays << subarray_first_last

  # Build subarray with first-last-second element
  subarrays << subarray_first_last.reverse

  
  subarrays.sort
end

sample = [1, 2, 3]
p sub_permutations(sample) #== [[1], [1, 2], [1, 2, 3], [1, 3], [1, 3, 2],
                              #  [2], [2, 1], [2, 1, 3], [2, 3], [2, 3, 1],
                              #  [3], [3, 1], [3, 1, 2], [3, 2], [3, 2, 1]]
