=begin
Exercise:
Use the `each_with_index` method to iterate through an array of 
your creation that prints each index and value of the array.
=end

# Solution:
arr = [4, 5, 6]
arr.each_with_index { |val, idx| puts "Index #{idx}: value #{val}" }

# Output:
# Index 0: value 4
# Index 1: value 5
# Index 2: value 6
