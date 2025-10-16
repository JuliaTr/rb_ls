=begin
Modify your `transpose` method from the previous exercise so it 
works with any matrix with at least 1 row and 1 column.
=end

def transpose(array)
  new_arr = []
  counter = 0
  subarray_counter = 0

  temp_arr = []

  loop do
    break if subarray_counter >= array[counter].size

    current_item = array[counter][subarray_counter]

    temp_arr << current_item

    if temp_arr.size == array.size
      new_arr << temp_arr
      temp_arr = []
      counter = 0
      subarray_counter += 1
    else
      counter += 1
    end
  end

  new_arr
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
# All test cases print `true`



## Possible solution:
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
# All test cases print `true`
