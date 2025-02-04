# What is the return value of the following code? Explain your reasoning.
[1, 2, 3].select do |num|
  num.odd?
end

# Concise answer:
=begin
The return value is `[1, 3]`.

Lines 1-3 contain a `do...end` block with its parameter and local variable `num`, 
passed as an argument to the non-mutating `select` method invoked on an Array object 
`[1, 2, 3]`. On line 2, the non-mutating `odd?` method is invoked on the object 
referenced by `num`. 

`select` always returns a new array without modifying the original based on 
the method's return value. `select` iterates over each element in the array.
If the return value evaluates to true (or truthy), then the element is selected for 
the new array. 

`odd?` returns a new boolean object, either `true` or `false`. Upon each iteration, 
`num.odd?` is evaluated, checking if an integer is odd. If it is true, then it returns 
`true`, which is a truthy value, the value referenced by `num` is selected.

Only `1` and `3` are odd integers, so they are selected. That's why the return 
value is `[1, 3]`.
=end




# Answer:
selected =  [1, 2, 3].select do |num|
              num.odd?
            end
p selected   # [1, 3]

selected =  [0, 2, 4].select do |num|
              num.odd?
            end
p selected   # []

=begin
The return value is `[1, 3]`.

Lines 1-3 contain a `do...end` block, passed as an argument to the non-mutating
`select` method invoked on an Array object `[1, 2, 3]`. On line 1, a block's
parameter and local variable `num` is initialized, references, and points to 
an Integer object `1`. On line 2, the non-mutating `odd?` method is invoked on 
the object referenced by `num`. 

On each iteration, each next element is assigned to `num`. First, `num`
points to `1`, then `2` and `3`.

In Ruby, blocks have their own scope. The inner scope can access variables 
initialized in the outer scope, but not vice versa.

`select` always returns a new array without modifying the original based on 
the method's return value. If the return value evaluates to true (or truthy),
then the element is selected for the new array. 

`odd?` returns a new boolean object, either true or false. Upon each 
iteration, `num.odd?` is evaluated, checking if an integer is odd. If 
it is true, then it returns `true`, which is a truthy value, the value 
referenced by `num` is selected by `select` to be included in the new 
array.

If no elements were odd, `[]` would be returned by `select`. Only `1` and `3` are 
odd integers in `[1, 2, 3]`, so they are selected. That's why the return value is `[1, 3]`.

It illustrates the following concepts: local variable scope regarding 
blocks, non-mutating method invocation on immutable data type, passing
block to the method invocation, block parameter, block's implicit return 
value, variables as pointers, and iteration.
=end
