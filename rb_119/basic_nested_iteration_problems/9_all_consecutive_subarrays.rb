=begin
Generate all consecutive subarrays of the array.

________________________________

PEDAC

P
Return nested array with all consecutive subarrays

Rules/reqs:
- fist number is alone

D
Input: array
Output: nested array
Intermediate:
- arrays: subarray
- integer: iterate over indexes

High-level/algo:
- Create `subarrays`
- Iterate 0 index upto array size - 1 (first)
  - Iterate `first` upto array size - 1 (second)
    - Add subarray `[first..second]` to `subarrays`
- Return `subarrays`

eg
[1, 2, 3, 4, 5]   first
 ^
[1, 2, 3, 4, 5]   second
    ^

[first..second]
=end

def consecutive_subarrays(arr)
  subarrays = []

  0.upto(arr.size - 1) do |first|
    first.upto(arr.size - 1) do |second|
      subarrays << arr[first..second]
    end
  end

  subarrays
end

sample = [1, 2, 3, 4, 5]
p consecutive_subarrays(sample) == [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5],
                                    [2], [2, 3], [2, 3, 4], [2, 3, 4, 5],
                                    [3], [3, 4], [3, 4, 5],
                                    [4], [4, 5],
                                    [5]]  # true
