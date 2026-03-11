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

## More flexible:
def create_columns(matrix)
  new_matrix = []
  matrix[0].size.times { new_matrix << [] }
  new_matrix
end

def transpose(matrix)
  # Create columns
  new_matrix = create_columns(matrix)

  # Put item in each column
  #       .
  # [[], [], []]
  idx = 0
  new_matrix.each do |column|
    matrix.each do |row|
      column << row[idx]
    end
    idx += 1
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



# ## Refactored Option 1:
# def transpose(matrix)
#   col1 = []
#   col2 = []
#   col3 = []

#   matrix.each do |row|
#     col1 << row[0]
#     col2 << row[1]
#     col3 << row[2]
#   end

#   [col1, col2, col3]
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




# ## Solution
# # Option 1:
# def transpose(matrix)
#   col1 = []
#   col2 = []
#   col3 = []
#   new_matrix = [col1, col2, col3]

#   matrix.each do |row| 
#     col1 << row[0]
#     col2 << row[1]
#     col3 << row[2]
#   end

#   new_matrix
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




# # Option 2:
# def transpose(matrix)
#   new_matrix = [
#     [matrix[0][0], matrix[1][0], matrix[2][0]],
#     [matrix[0][1], matrix[1][1], matrix[2][1]], 
#     [matrix[0][2], matrix[1][2], matrix[2][2]]
#   ]
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
