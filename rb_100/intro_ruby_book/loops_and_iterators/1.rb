# What does the `each` method in the following program return 
# after it is finished executing?

x = [1, 2, 3, 4, 5]

x.each do |a|
  a + 1
end


# Solution:
x = [1, 2, 3, 4, 5]

p(x.each do |a|
  a + 1
end)

# Output: [1, 2, 3, 4, 5]

=begin
The `each` method returns `[1, 2, 3, 4, 5]`.

On line 1, a local variable `x` is initialized and references an 
Array object with a collection of elements `[1, 2, 3, 4, 5]`.

On line 3, a `do/end` block is passed as an argument to the `each`
method invocation on tthe object referenced by `x`. Inside the block
`|a|` is block's parameter and a local variable. On each iteration
a value starting from the first index (0) from `x` is assigned to `a`.
On line 4, although the operation `a + 1` is executed on each element
from the array, the `each` method always returns the original
array it was called on. That's why the return value is `[1, 2, 3, 4, 5]`
without incremented elements.
=end

=begin
irb(main):137:0> x = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb(main):138:1* x.each do |a|
irb(main):139:1*   a + 1
irb(main):140:0> end
=> [1, 2, 3, 4, 5]
=end
