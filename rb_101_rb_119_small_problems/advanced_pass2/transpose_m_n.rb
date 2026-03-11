=begin
Matrix transposes aren't limited to 3 x 3 matrices, or even square 
matrices. Any matrix can be transposed by simply switching 
columns with rows.

Modify your transpose method from the previous exercise so it 
works with any matrix with at least 1 row and 1 column.

H-l:
I:
- Create empty nested array with necessary number of subarrays
- Populate nested arrays
=end

## Solution
def transpose(matrix)
  # Create empty nested array with necessary number of subarrays
  new_matrix = Array.new(matrix[0].size) { [] }

  # Populate nested arrays
  # `column` is a subarray in `new_matrix`that will hold one
  # column from input matrix
  new_matrix.each_with_index do |column, col_idx|
    # From each row in input matrix
    matrix.each do |row|
      # Populate each subarray in `new_matrix` with element from 
      # each row input matrix
      column << row[idx]
    end
  end

  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
# All test cases return `true`.

=begin
# Create empty nested array with necessary number of subarrays
[[], [], [], []]
[[]]
[[], [], [], [], []]
[[]]
=end



# new_matrix = [
#   [matrix[0][0], matrix[1][0], matrix[2][0]],
#   [matrix[0][1], matrix[1][1], matrix[2][1]], 
#   [matrix[0][2], matrix[1][2], matrix[2][2]]
# ]

## Alternative
def transpose(matrix)
  rows = matrix.size # number of elements in each row in new matrix
  cols = matrix.first.size # number of rows in new matrix
  result = Array.new(cols) { [] }

  # For each index of subarray in new matrix
  (0...cols).each do |col_idx|
    # For each index of element is subarray in new matrix
    (0...rows).each do |row_idx|
      # Push elements from each row in input matrix to each 
      # subarray in new matrix
      result[col_idx] << matrix[row_idx][col_idx]
    end
  end

  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
# All test cases return `true`.




## Possible solution
def transpose(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size

  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end

  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
# All test cases return `true`.
