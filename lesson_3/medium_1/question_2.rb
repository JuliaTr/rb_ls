### Why the line below throws an error? How to fix it?

puts "the value of 40 + 2 is " + (40 + 2)
# The output to the console is ``+': no implicit conversion of Integer into String (TypeError)`
# This is because Strings and Integers cannot be concatenated. 

# To solve this problem the integer can be be converted into a string or the integer value can be interpolated into the existed string.

## `#to_s`
puts "the value of 40 + 2 is " + (40 + 2).to_s
# Output: the value of 40 + 2 is 42

## interpolation
puts "the value of 40 + 2 is #{40 + 2}"
# Output: the value of 40 + 2 is 42

