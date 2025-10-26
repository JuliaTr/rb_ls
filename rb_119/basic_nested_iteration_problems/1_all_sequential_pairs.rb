=begin
PROBLEM:
Generate all sequential pairs of the array.

_____________________________________________________________

PEDAC

P
Return a nested array with all requential pairs.

Rules/reqs:
- in pairs number can repeat (eg. [[1, 2], [2, 3]...])

D
Input: array
Output: nested array
Intermediate:
- array to store a pair
- integer to iterate from 0 index upto array.size - 2
- range to iterate from 0 index upto array.size - 2    X

High-level:
- Create a new array to store nested arrays
- Iterate through index from 0 upto array.size - 2
  - Create a pair
  - Add pair to a new array
- Return a new array

eg.
new_arr = [[1, 2], [2, 3], [3, 4], [4, 5]]
[1, 2, 3, 4, 5]
          ^
pair = [arr[index], arr[index + 1]]
pair => [4, 5]
=end

def sequential_pairs(arr)
  new_arr = []

  0.upto(arr.size - 2) do |index|
    new_arr << [arr[index], arr[index + 1]]
  end

  new_arr
end

sample = [1, 2, 3, 4, 5]
p sequential_pairs(sample) == [[1, 2], [2, 3], [3, 4], [4, 5]] # true