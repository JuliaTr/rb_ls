# 6. What will the following code output and return? Explain your reasoning.

arr = [1, 2, 3]
new_arr = arr.map do |num|
  num * 2
  puts num
end
p new_arr

# Output:
# 1
# 2
# 3
# [nil, nil, nil]

# What will the following code output and return? Explain your reasoning.
# Follow-up: What concept is demonstrated in this code snippet?

=begin
# What will the following code output and return? 
Output is `1`, `2`, `3`, `[nil, nil, nil]`.
Return is `[nil, nil, nil]`.

# Explain your reasoning.
On line 1, a local variable `arr` is initialized and references an Array
object with a collection of integers `[1, 2, 3]`.

On lines 5-8, a `do..end` block with a parameter `num` is passed 
as an argument to the non-mutating `map` method invoked on the object
referenced by `arr`. A local variable `new_arr` is initialiazed and
references the return value of the block.

The `num * 2` is evaluated and executed, but its return value is never
used as it's not the last expression in the block.

`map` returns a new array with the same number of elements returned
by the block. This block returns `nil` 3 times, because the last 
evaluated and executed expression of the block is `puts num`. The
`puts` outputs each number on each iterattion `1`, `2`, `3`, but it returns 
`nil` implicitly from the block. So, the return value is 
`[nil, nil, nil]`.

# Follow-up: What concept is demonstrated in this code snippet?
Implicit return, particularly from the block.
=end