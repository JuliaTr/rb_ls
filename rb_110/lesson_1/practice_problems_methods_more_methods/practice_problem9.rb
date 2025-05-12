# What is the return value of `map` in the following code? Why?
result = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

p result  # [nil, "bear"]

=begin
*What is the return value of `#map` in the following code?*
The return value of `#map` is `[nil, "bear"]`.

*Why?*
On lines 2-6, a `do...end` block is passed as an argument to
the `#map` method invoked on a Hash object `{ a: 'ant', b: 'bear' }`.
The `key` and `value` are parameters.

Inside the block, on lines 3-5, there's an `if` statement with 
a condition `value.size > 3`. If `value.size > 3` is evaluated 
to true, then line 4 (`value`) is executed and returned by the 
`if` statement. If not, the `if` statement returns `nil`.

The `Enumerable#map` method returns a new Array object, even if 
invoked on a hash. The return value of the `#map` 
method has the same number of objects as the original collection 
considering the returned value by the block. 

On the first iteration, the block returns `nil`, as the `if` 
statement's condition is evaluated to false (`'ant'`'s size is 
`3`). So, `nil` is returned by the block. On the second iteration, 
the `if` statement's condition is evaluated to true (`'bear'`'s size 
is greater than `3`). So, `"bear"` is returned by the block.

That's why `[nil, "bear"]` is the return value of `#map`.
=end
