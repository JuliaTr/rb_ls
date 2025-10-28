=begin
Rotate the argued array so that the rows are now columns and 
vice versa. The object returned by argued_array[x][y] should 
be the same object returned by rotated_array[y][x].

_______________

PEDAC

P
Rotate the the columns and rows.

1  2  3
4  5  6
7  8  9

rotated:
1  4  7
2  5  8
3  6  9

Rules/reqs:
- mutated subarrays
- don't mutate object itself (outer array)
- return the same object

D
Input: nsted array
Output: the same array with mutated subarrays
Intermediate:  X
=end

# With mutation
def rotation!(matrix)
  matrix.size.times do |row|
    matrix.size.times do |column|
      if row > column
        matrix[row][column], matrix[column][row] = matrix[column][row], matrix[row][column]
      end
    end
  end

  matrix
end

nested_sample = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p rotation!(nested_sample) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p nested_sample == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
# All test cases print `true`.



## Experiments:
# Without mutation
def rotation(matrix)
  matrix.transpose
end

nested_sample = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p rotation(nested_sample) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p nested_sample == [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# All test cases print `true`.
