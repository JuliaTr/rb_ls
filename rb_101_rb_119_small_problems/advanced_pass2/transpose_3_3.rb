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

# new_matrix = [
#   [matrix[0][0], matrix[1][0], matrix[2][0]],
#   [matrix[0][1], matrix[1][1], matrix[2][1]], 
#   [matrix[0][2], matrix[1][2], matrix[2][2]]
# ]

## Concise (for "square matrix"):
def transpose(matrix)
  first_row = matrix.first
  first_row.zip(*matrix[1..])  # with any number of rows
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




## Concise (hard-coding for matrix 3x3):
def transpose(matrix)
  matrix[0].zip(matrix[1], matrix[2])
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




## More refactored:
def transpose(matrix)
  # Compact version to create a nested array; just a shorter way
  new_matrix = Array.new(matrix[0].size) { [] }  # empty

  # Without tracking indexes manually
  # Populate nested array
  # Iterate over each empty subarray, where subarrays are columns
  # from input matrix.
  new_matrix.each_with_index do |column, idx|
    # From each row in input matrix
    matrix.each do |row|
      # Populate new matrix, putting elements from each row from input matrix
      column << row[idx]
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




## More flexible:
def create_columns(matrix)
  new_matrix = []
  matrix[0].size.times { new_matrix << [] }
  new_matrix
end

# assumes a non-empty matrix with rows of equal length
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




## Refactored Option 1:
def transpose(matrix)
  col1 = []
  col2 = []
  col3 = []

  matrix.each do |row|
    col1 << row[0]
    col2 << row[1]
    col3 << row[2]
  end

  [col1, col2, col3]
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




## Solution
# Option 1:
def transpose(matrix)
  col1 = []
  col2 = []
  col3 = []
  new_matrix = [col1, col2, col3]

  matrix.each do |row| 
    col1 << row[0]
    col2 << row[1]
    col3 << row[2]
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




# Option 2:
def transpose(matrix)
  new_matrix = [
    [matrix[0][0], matrix[1][0], matrix[2][0]],
    [matrix[0][1], matrix[1][1], matrix[2][1]], 
    [matrix[0][2], matrix[1][2], matrix[2][2]]
  ]
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




## Possible solution
#   new_matrix = [
#     [matrix[0][0], matrix[1][0], matrix[2][0]],
#     [matrix[0][1], matrix[1][1], matrix[2][1]], 
#     [matrix[0][2], matrix[1][2], matrix[2][2]]
#   ]
def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    # `row_index` increments for each `column_index` 
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

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# All test cases return `true`.




# new_matrix = [
#   [matrix[0][0], matrix[1][0], matrix[2][0]],
#   [matrix[0][1], matrix[1][1], matrix[2][1]], 
#   [matrix[0][2], matrix[1][2], matrix[2][2]]
# ]

## Alternative way to use `map`
def transpose(matrix)
  # Build outer array with number of nested arrays
  (0..2).map.with_index do |_, column_idx|
    # Build each inner array with inner elements
    (0..2).map.with_index do |_, row_idx|
      # Extract from matrix the element which will be the subarray
      matrix[row_idx][column_idx]
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




# new_matrix = [
#   [matrix[0][0], matrix[1][0], matrix[2][0]],
#   [matrix[0][1], matrix[1][1], matrix[2][1]], 
#   [matrix[0][2], matrix[1][2], matrix[2][2]]
# ]

## Solution with `map`:
def transpose(matrix)
  # Iterate over each subarray in matrix and return a new outer array
  matrix.map.with_index do |subarr, subarr_idx|
    # Iterate over each element in subarray and return a new 
    # subarray (inner array)
    subarr.map.with_index do |_, element_idx|
      matrix[element_idx][subarr_idx]
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




## Alternative:
# new_matrix = [
#   [matrix[0][0], matrix[1][0], matrix[2][0]],
#   [matrix[0][1], matrix[1][1], matrix[2][1]], 
#   [matrix[0][2], matrix[1][2], matrix[2][2]]
# ]
def transpose(matrix)
  rows_count = matrix.size     # 3
  cols_count = matrix[0].size  # 3

  Array.new(cols_count) do |col_idx|
    Array.new(rows_count) do |row_idx|
      matrix[row_idx][col_idx]
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
