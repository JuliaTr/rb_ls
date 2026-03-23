=begin
Write a method that takes a 3 x 3 matrix in Array of 
Arrays format and returns the transpose of the 
original matrix. Note that there is a `Array#transpose` 
method that does this -- you may not use it for this 
exercise. You also are not allowed to use the `Matrix` 
class from the standard library. Your task is to do 
this yourself.

Take care not to modify the original matrix: you must 
produce a new matrix and leave the original matrix 
unchanged.
=end

def transpose(matrix)
  # Empty matrix
  new_matrix = Array.new(matrix.first.size) { [] }

  # Populate new matrix
  new_matrix.each_with_index do |row, row_idx|
    matrix.each_with_index do |_, column_idx| 
      row << matrix[column_idx][row_idx]
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

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# All test cases return `true`.





# ## Possible solution:
# def transpose(matrix)
#   result = []

#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end

#   result
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# # All test cases return `true`.




## Alternatives:
# with `map`:
def transpose(matrix)
  matrix.map.with_index do |row, row_idx|
    row.map.with_index do |_, column_idx|
      matrix[column_idx][row_idx]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# All test cases return `true`.
