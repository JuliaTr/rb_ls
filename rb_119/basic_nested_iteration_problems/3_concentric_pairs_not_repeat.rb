=begin
PROBLEM
Group the array into concentric pairs - the first and last 
elements, then the second and second-last, etc. "Consume" elements - 
if they're part of one pair, they can't be part of any other.

___________________________________________________________

PEDAC

P
Return nested array with paired first and last, 
second and second-last etc. Not use element twice.

Rules/reqs:
- the middle element is the only in a pair

D
Input: array
Output: nested array
Intermediate: 
- array to store a pair
- integer to iterate over indexes
- range to iterate over indexes   X

High-level:
- Create a `new_array`
- Create `last_index` equal to `-1`
- Iterate from 0 index upto middle of the array (arr.length / 2)
  - if arr length equal to first_index
    - Add this element of first index
  - Add pair to `new_arr`
  - Decrement `last_index`
- Return `new_array`

eg
last_index = -1
new_arr = [[1, 5], [2, 4]]
[1, 2, 3, 4, 5]     first_index
    ^     ^

pair = [arr[first_index], arr[last_index]]
pair => [2, 4]
last_index -= 1
=end

## Improved solution (add test cases):
def grouped_pairs(arr)
  new_arr = []
  first_index = 0
  last_index = arr.length - 1

  while first_index < last_index
    new_arr << [arr[first_index], arr[last_index]]
    first_index += 1
    last_index -= 1 
  end

  # For odd-length arrays, where the pointers meet at the middle 
  # element:
  new_arr << [arr[first_index]] if first_index == last_index

  new_arr
end

p grouped_pairs([1, 2, 3, 4, 5]) == [[1, 5], [2, 4], [3]]
p grouped_pairs([1, 2, 3, 4]) == [[1, 4], [2, 3]]
p grouped_pairs([1, 2, 3, 4, 5, 6]) == [[1, 6], [2, 5], [3, 4]]
# All test cases return `true`.



## Solution (according to PEDAC):
def grouped_pairs(arr)
  new_arr = []
  last_index = -1
  arr_middle = arr.length / 2

  0.upto(arr_middle) do |first_index|
    if arr_middle == first_index
      new_arr << [arr[first_index]]
    else
      new_arr << [arr[first_index], arr[last_index]]
    end

    last_index -= 1
  end

  new_arr
end

p grouped_pairs([1, 2, 3, 4, 5]) == [[1, 5], [2, 4], [3]] # true
