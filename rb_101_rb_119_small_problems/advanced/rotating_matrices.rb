=begin
A matrix can be represented in Ruby by an Array of Arrays. For 
example:
1  5  8
4  7  2
3  9  6

can be described by the Array of Arrays:
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

A 90-degree rotation of a matrix produces a new matrix in 
which each side of the matrix is rotated clockwise by 90 
degrees. For example, the 90-degree rotation of the matrix 
shown above is:
3  4  1
9  7  5
6  2  8

A 90 degree rotation of a non-square matrix is similar. For 
example, the rotation of:
3  4  1
9  7  5

is:
9  3
7  4
5  1

Write a method that takes an arbitrary matrix and rotates it 
90 degrees clockwise as shown above.
=end

def rotate90(array)
  new_arr = []
  counter = -1
  subarray_counter = 0

  temp_arr = []

  loop do
    break if subarray_counter >= array[counter].size

    current_item = array[counter][subarray_counter]

    temp_arr << current_item

    if temp_arr.size == array.size
      new_arr << temp_arr
      temp_arr = []
      counter = -1
      subarray_counter += 1
    else
      counter -= 1
    end
  end

  new_arr
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
# All test cases print `true`.



## Possible solution:
def rotate90(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size

  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row.reverse
  end

  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
# All test cases print `true`.



### Learn from others:
def rotate90(matrix)
  rotated = []
  new_matrix_size = matrix.first.size
  index = 0

  # p matrix
  # p new_matrix_size
  # p matrix.reverse

  new_matrix_size.times do
    row = []
    matrix.reverse.each do |arr|
      # p "-----------------------"
      # p arr
      # p arr[index]
      row << arr[index]
    end
    rotated << row
    index += 1
  end

  rotated
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
=begin
$ ruby rotating_matrices.rb
[[1, 5, 8], [4, 7, 2], [3, 9, 6]]
3
[[3, 9, 6], [4, 7, 2], [1, 5, 8]]
"-----------------------"
[3, 9, 6]
3
"-----------------------"
[4, 7, 2]
4
"-----------------------"
[1, 5, 8]
1
"-----------------------"

[3, 9, 6]
9
"-----------------------"
[4, 7, 2]
7
"-----------------------"
[1, 5, 8]
5
"-----------------------"

[3, 9, 6]
6
"-----------------------"
[4, 7, 2]
2
"-----------------------"
[1, 5, 8]
8
=end

p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
# All test cases print `true`.



## Further exploration:
# Can you modify your solution to perform 90, 180, 270, and 360 
# degree rotations based on an argument?
