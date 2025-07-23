=begin
We want to iterate through the `numbers` array and return a 
new array containing only the even numbers. However, our code 
isn't producing the expected output. Why not? How can we 
change it to produce the expected result?
=end

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map { |n| n if n.even? }
p even_numbers   # [nil, 2, nil, 6, nil, nil, 8]
# expected output: [2, 6, 8]

=begin
The `#map` returns the same number of elements as in the
the original object.
=end



## Bug fix:
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select { |n| n if n.even? }
p even_numbers   # [2, 6, 8]



## Experiment (possible solution):
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select { |n| n.even? }
p even_numbers    # [2, 6, 8]
