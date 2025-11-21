=begin
Write a method that takes a 3 x 3 matrix in Array of Arrays 
format and returns the transpose of the original matrix. Note 
that there is a `Array#transpose` method that does this -- you 
may not use it for this exercise. You also are not allowed to 
use the `Matrix` class from the standard library. Your task is to 
do this yourself.

Take care not to modify the original matrix: you must produce a 
new matrix and leave the original matrix unchanged.

------------------------

Notes:
- From each subarray
  - Take each element
    - Build a new subarray

=end

## Solution:
def transpose(matrix)
  # Builds new matrix
  (0..matrix.length - 1).map do |element_index|     # column indice

    # p [] # => [[], [], []]
    # Build NEW subarray.
    (0..metrix.length - 1).map do |subarray_index|  # row indice
      matrix[subarray_index][element_index]
    end

  end
end

=begin
[[1, 5, 8], [4, 7, 2], [3, 9, 6]]
 ^
  [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
          ^

=end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]] # true
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]     # true



## Experiments:
def transpose(matrix)
  # Build new matrix
  (0..matrix.length - 1).map do |new_subarray_index|
    # Building new subarray
    []
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]  # true
# [[], [], []]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]      # true



def transpose(matrix)
  new_matrix = []

  # Build a `new_matrix`
  matrix.length.times do |element_index|
    matrix.length.times do |subarray_index|
      # From each subarray take an element
      new_matrix << matrix[subarray_index][element_index]
    end
  end

  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# [1, 4, 3, 5, 7, 9, 8, 2, 6]

# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]



def transpose(matrix)
  matrix.length.times do |element_index|  # 0  1  2
    p "-----------"
    # - From each subarray
    #   - Take each element at current index
    p matrix[0][element_index]
    p matrix[1][element_index]
    p matrix[2][element_index]
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
=begin
"-----------"
1
4
3
"-----------"
5
7
9
"-----------"
8
2
6
3 (`#times` return value)
=end

# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]



def transpose(matrix)
  # For each subarray
  (0..2).each do |column_index|
    # Print each element
    p matrix[column_index][0]
    p matrix[column_index][1]
    p matrix[column_index][2]
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
=begin
1
5
8

4
7
2

3
9
6
=end
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

