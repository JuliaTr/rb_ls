# What will the following code print, and why?
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a   # 3

=begin
The ouput is `3`.

On line 2, a local variable `a` is initialized and references
an Integer object with a value of `7`

On line 3, a local variable `array` is initialized and references
an Array object `[1, 2, 3]`.

on line 9, an object referenced by `a` is passed as an argument
to the `puts` method invocation, outputing `3` to the console.

On lines 5-7, there's a `do..end` block passed as an argument
to the `each` method invoked on the onject referenced by `array`,
which is `[1, 2, 3]`. Inside the block `element` is block's parameter
and local variable.

The `each` method reteurns original object it is called on (`[1, 2, 3]`).
Blocks can acces local variables initialized in the outer scope. 
Outer scope can access variables reassigned inside a block, but not
initialized inside a block. Block can use and modify local variables
that are defined ouside the block.

Upon each iteration, on line 6, `a` is reassigned to each integer
from the array: `1`, then `2`, then `3`.

So, `puts a` (line 9) outputs the last value (`3`) `a` was assigned to.
=end
