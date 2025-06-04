=begin
Practice Problem 13
Given the following data structure, return a new array 
containing the same sub-arrays as the original but o
ordered logically by *only* taking into consideration the 
odd numbers they contain.
=end

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

result = arr.sort_by do |sub_array|
  sub_array.select { |number| number.odd? }
end

p result  # [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
# Works as expected
