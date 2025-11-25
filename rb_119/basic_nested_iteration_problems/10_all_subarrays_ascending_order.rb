=begin
Generate all subarrays (consecutive or not) from the array 
where the elements are in ascending order.
=end

def ordered_subarrays(arr)
  result = []
  (1..arr.size).each do |number|
    arr.combination(number) { |combination| result << combination }
  end
  result.sort
end

sample = [1, 2, 3, 4, 5]
p ordered_subarrays(sample) == [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], 
                                [1, 2, 3, 4, 5], [1, 2, 3, 5], 
                                [1, 2, 4], [1, 2, 4, 5], [1, 2, 5],
                                [1, 3], [1, 3, 4], [1, 3, 4, 5], [1, 3, 5],
                                [1, 4], [1, 4, 5], [1, 5],
                                [2], [2, 3], [2, 3, 4], [2, 3, 4, 5], [2, 3, 5],
                                [2, 4], [2, 4, 5], [2, 5],
                                [3], [3, 4], [3, 4, 5], [3, 5],
                                [4], [4, 5],
                                [5]]




### Experiments (in progress):                              
=begin

PEDAC

P
all subarrays consecutive and not

Rules/reqs:
- not consecutive is when one or more elements are missed

D
Input: array
Output: nested array
Intermediate:
- array: subarrays
- integer: iteration over indexes

High-level/algo:
- Create empty `subarrays` array

Helper: All consecutive subarrays
- Iterate 0 index upto arr size - 1 (first_index)
  - Iterate `first` index upto arr size - 1 (second_index)
    - Add subarray `[first_index..second_index]`
  
Helper: All other subarrays with skipped each index between 0 and -1
- `skipped_index` equal to array size - 2
- While `skipped_index` <= 1
  - [0..first_index] delete at `skipped_index`
  - Add subarray above to subarrays
  - Decrement `skipped_index` by 1

Helper: All other subarrays with skipped all indexes between 0 and -1

- Return `subarrays`


eg All consecutive subaraays   v
[1, 2, 3, 4, 5]
^

  [1, 2, 3, 4, 5]
   ^
  [first_index..second_index]

eg All other subarrays with skipped each index between 0 and -1
[1, 2, 3, 4, 5] 

[1, 2, 3, 5]     v  (`4` deleted)
[1, 2, 4, 5]     v  (`3` deleted)
[1, 3, 4, 5]     v  (`2` deleted)

eg All other subarrays with skipped different indexes 
# skip with step by 2
[1, 2, 4]          (`3, 5` deleted) after index 1

# skip odd indexes
[1, 3, 5]        v  (`2, 4` deleted)

# skip index 2 and last index
[1, 3, 4]          (`2, 5` deleted)

# skip two indexes with step by 3 in a row
[1, 4, 5]          (`2, 3` deleted)
[1, 2, 5]          (`3, 4` deleted)

# skip two indexes with step by 3 and one index
[1, 4]             (`2, 3, 5` deleted)
[1, 3]             (`2, 4, 5` deleted)

eg All other subarrays with skipped all indexes between 0 and -1
[1, 5]          v  (`2, 3, 4`)
=end

def ordered_subarrays(arr)
  subarrays = []

  # # All consecutive subarrays
  # 0.upto(arr.size - 1) do |first_index|
  #   first_index.upto(arr.size - 1) do |second_index|
  #     subarrays << arr[first_index..second_index]
  #   end
  # end

  # # All other subarrays with skipped each index between 0 and -1
  # skipped_index = arr.size - 2   # 3 2
  # index = arr.size - 1           # 4
  # while skipped_index >= 1
  #   subarray = arr[0..index]
  #   subarray.delete_at(skipped_index)
  #   subarrays << subarray

  #   skipped_index -= 1
  # end

  # All other subarrays with skipped different indexes
  # skip with step by 2
  

  # # skip odd indexes
  # subarrays << arr.select.with_index { |_, index| index.even? }

  # # All other subarrays with skipped all indexes between 0 and -1
  # subarrays << [arr[0], arr[-1]]

  subarrays
end

sample = [1, 2, 3, 4, 5]
p ordered_subarrays(sample) == [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], 
                                [1, 2, 3, 4, 5], [1, 2, 3, 5], 
                                [1, 2, 4], [1, 2, 4, 5], [1, 2, 5],
                                [1, 3], [1, 3, 4], [1, 3, 4, 5], [1, 3, 5],
                                [1, 4], [1, 4, 5], [1, 5],
                                [2], [2, 3], [2, 3, 4], [2, 3, 4, 5], [2, 3, 5],
                                [2, 4], [2, 4, 5], [2, 5],
                                [3], [3, 4], [3, 4, 5], [3, 5],
                                [4], [4, 5],
                                [5]]