# # Why is the error has risen and what are two possible ways to 
# # fix this?

# puts "the value of 40 + 2 is " + (40 + 2)
# # no implicit conversion of Integer into String (TypeError)

# =begin
# Ruby tries to convert `(40 + 2)`, which returns `42`, into a
# string to concatenate them together. However, strings and 
# integers isn't possible to concatenate together.
# =end

## Bug fix:
# Option 1:
puts "the value of 40 + 2 is #{40 + 2}"
# the value of 40 + 2 is 42


# Option 2:
sum = 40 + 2
puts "the value of 40 + 2 is " + sum.to_s
# the value of 40 + 2 is 42

# Option 3:
puts "the value of 40 + 2 is " + (40 + 2).to_s
# the value of 40 + 2 is 42
