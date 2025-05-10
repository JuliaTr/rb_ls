# Exercise: What is the return value of `reject` in the following code? Why?
result = [1, 2, 3].reject do |num|
  puts num
end

p result

# Output:
# 1
# 2
# 3
# [1, 2, 3]

=begin
The return value of the `reject` method is an new array of 
objects rejected by the block. `reject` considers the truthiness 
of the block's return value.

From the documentation: "returns an array of those elements for 
which the block returns `nil` or `false`"

On line 3, inside the `do...end` block (lines 2-4) passed to the 
`Enumerable#reject` method invoked on `[1, 2, 3]`, the call to 
`puts num` returns `nil`, because the `puts` method always returns
`nil`. 

`nil` is a falsy value. So, there're no rejected values in the
collection and all elements were selected. That's why 
`[1, 2, 3]` is returned.
=end



# Example from the documentation:
result = (0..9).reject { |i| i * 2 if i.even? }
p result  # [1, 3, 5, 7, 9]
