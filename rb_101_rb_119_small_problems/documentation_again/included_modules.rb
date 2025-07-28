# Change the code to print the two smallest values in the `Array`.
# Use version 2.3.0 of the Ruby Array Documentation.

a = [5, 9, 3, 11]
puts a.min        # 3


## Solution:
# https://docs.ruby-lang.org/en/2.3.0/Enumerable.html#method-i-min
a = [5, 9, 3, 11]
puts a.min(2)

# Output:
# 3
# 5
