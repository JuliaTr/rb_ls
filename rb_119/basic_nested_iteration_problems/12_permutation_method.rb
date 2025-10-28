=begin
(using `Array#permutation` method)
Generate all permutations of the array - that is, every possible 
array that can be formed by ordering the elements of the argued 
array.
=end

sample = [1, 2, 3]
p sample.permutation.to_a
# [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
