=begin
PROBLEM
Group the array into sequential pairs. "Consume" elements - if 
they're part of one pair, they can't be part of any other.

_____________________________________________________________

PEDAC

P
Return a nested array with elements can't be repeated.

Rules/reqs:
- include one element if no elements left
- elements can't repeat

D
Input: array
Output: nested array
Intemediate:
- array to store pairs
- integer to iterate on indexes
- range  X

High-level:
- Create a new_array
- Iterate over indexes from 0 upto array size - 1 with step 2
  - if index equal array size - 1
    - Add a pair with the last element only to new_array
    - return new_array  
  - Create a pair
  - Add a pair to new_array
- Return new_array

eg
new_arr = [[1, 2], [3, 4], [3, 4], [5]]
[1, 2, 3, 4, 5]    index  0
             ^
pair = [arr[index], [index + 1]]
pair => [3, 4]
=end

def grouped_pairs(arr)
  new_arr = []

  0.step(to: arr.size - 1, by: 2) do |index|
    return new_arr << [arr[first_index]] if first_index == arr.size - 1
    new_arr << [arr[first_index], arr[first_index + 1]]
  end

  new_arr
end

sample = [1, 2, 3, 4, 5]
p grouped_pairs(sample) == [[1, 2], [3, 4], [5]]  # true
