# What is the return value of the following code? Explain your reasoning.
[1, 2, 3].map do |num|
  num * 2
  puts num
end

# Answer:
result =  [1, 2, 3].map do |num|
            num * 2
            puts num
          end
p result
# Output:
# 1
# 2
# 3
# [nil, nil, nil]   # return value

=begin
The return value is `[nil, nil, nil]`.
The output is `1`, `2`, and `3` on each line, respectively.

Lines 1-4 contain a `do...end` block, passed as an argument to the non-mutating 
`map` method invocation on an Array object `[1, 2, 3]`. On line 1, a block's 
parameter and local variable `num` is initialized, references, and points 
to an Integer object `1`. On line 2, the non-mutating `*` method is invoked 
on the object referenced by `num` multiplying it by 2. On line 3, the 
object referenced by `num` is passed to the `puts` method invocation, 
outputting `1`, `2`, `3` to the console.

On each iteration, each next element is assigned to `num`. First, `num` 
points to `1`. The next iteration, `num` points to `2`. In the last iteration,
`num` points to `3`.

In Ruby, blocks have their own scope. The inner scope can access 
local variables initialized in the outer scope, but not vice versa.

Upon each iteration, `num * 2` is evaluated, but its return value is not 
assigned to any variable, not stored in the computer's memory, and is not 
returned by the block, which has no effect on the final result. So, the 
code execution goes to the next expression which is `puts num` on line 3.

The `map` method always returns a new array with the same number of elements 
as the original array based on the block's *return value*. Each element 
is the result of the return value of the block once for every element 
in the original array. `map` uses the return value of the block to perform 
transformation on each element in the array. The block uses the return 
value of `puts num`. `put num` is the last evaluated and executed expression 
of the block. The `puts` method always returns `nil` because it's designed 
for output, not for returning a value. So, each element in the array is 
transformed to `nil` because that's what `puts` returns. That's why the 
return value of the block is `[nil, nil, nil]`.

It illustrates the following concepts: local variable scope regarding blocks,
non-mutating method invocation on the mutable data type, passing block
to the method invocation, block parameter, block’s implicit return value,
variables as pointers, and iteration.
=end
