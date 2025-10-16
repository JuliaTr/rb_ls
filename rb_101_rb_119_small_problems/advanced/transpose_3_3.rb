=begin
A 3 x 3 matrix can be represented by an Array of Arrays in 
which the main Array and all of the sub-Arrays has 3 elements. 

For example:
1  5  8
4  7  2
3  9  6

can be described by the Array of Arrays:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

The transpose of a 3 x 3 matrix is the matrix that results from 
exchanging the columns and rows of the original matrix. 

For example, the transposition of the array shown above is:
1  4  3
5  7  9
8  2  6

Write a method that takes a 3 x 3 matrix in Array of Arrays 
format and returns the transpose of the original matrix. Note 
that there is a `Array#transpose` method that does this -- you 
may not use it for this exercise. You also are not allowed to 
use the `Matrix` class from the standard library. Your task is 
to do this yourself.

Take care not to modify the original matrix: you must produce a 
new matrix and leave the original matrix unchanged.

This program should print "true" twice.

_______________________________________________________________

PEDAC

P
Return an array of subarrays, where each subarray is consisted 
of digits from the original array.

Rules/reqs:
- the first transposed array has the first digits from each array
  [1, 4, 3]
- the second transposed array has the second digits from each array
  [5, 7, 9]
- the third transposed array has the third digits from each array
  [8, 2, 6]

D
Input: nested array
Output: boolean
Return: transposed nested array
Side effects: no
Intermediate: no

High-level:
- Iterate of input array to return a transposed nested array

Algorithm:
- Initialize a new empty array
- For each subarray
  - Push the first element to a new array
  - Push the second element to a new array
  - Push the third element to a new array
=end

def transpose(array)
  new_arr = []
  counter = 0
  subarray_counter = 0

  temp_arr = []

  loop do
    current_item = array[counter][subarray_counter]

    temp_arr << current_item

    counter += 1

    if temp_arr.size == 3
      new_arr << temp_arr
      temp_arr = []
      counter = 0
      subarray_counter += 1
    end

    break if subarray_counter >= array.size
  end

  new_arr

end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]   # true
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]       # true



def transpose(matrix)
  result = []

  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end

  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]   # true
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]       # true



## Experiments:
def transpose(array)
  new_arr = []
  counter = 0
  subarray_counter = 0

  temp_arr = []

  loop do
    current_item = array[counter][subarray_counter]

    temp_arr << current_item
    p temp_arr

    counter += 1
    if counter >= array.size
      new_arr << temp_arr
      break
    end
  end

  new_arr

end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix  # [[1, 4, 3]]
