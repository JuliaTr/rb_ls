# What is the return value of the following code? Why?
result = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

p result    

# Output:
# 2
# 3
# [1, nil, nil]

=begin
*What is the return value of the following code?* 
The return value of the code is `[1, nil, nil]`

*Why?*
On lines 2-8, a `do...end` block is passed as an argument to
the `#map` method invoked on an Array object `[1, 2, 3]`.
The `num` is a parameters and block's local vaeiable.

Inside the block, on lines 3-7, there's an `if/else` statement
with a condition `num > 1`. If `num > 1` is evaluated 
to true, then line 4 (`puts num`) is executed and returned by the 
`if/else` statement. If not, the `else` clause is executed and
returned by the block.

The `Enumerable#map` method returns a new Array object with the 
same number of elements as the original collection considering 
the returned by the block. 

On the first iteration, the block returns `1`, as the `if/else` 
statement's condition is evaluated to false. So, `1` is returned 
by the block. On the second and thirs iterations, the `if/else` 
statement's condition is evaluated to true. So, 
`nil` is returned twice by the block.

That's why `[1, nil, nil]` is the return value of `#map`.
=end
