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

def grouped_pairs(arr)
  new_arr = []
  last_index = -1
  arr_length = arr.length / 2

  0.upto(arr_length) do |first_index|
    if arr_length == first_index
      new_arr << [arr[first_index]]
    else
      new_arr << [arr[first_index], arr[last_index]]
    end
    
    last_index -= 1
  end

  new_arr
end

sample = [1, 2, 3, 4, 5]
p grouped_pairs(sample) == [[1, 5], [2, 4], [3]]
