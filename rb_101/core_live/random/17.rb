# What will be printed to the console?
x = 5
y = 10
puts x < 7 ? y : x

=begin
Answer:

The output is `10`.

On lines 1 and 2, local variables `x` and `y` are initialized and reference
Integer objects with values `5` and `10`, respectively. On line 3, the 
return value of a ternary expression `x < 7 ? y : x` is passed as as 
argument to the `puts` method invocation, outputting `10` to the console.

In the ternary expression, the condition is evaluated for truthiness. If
the return value is truthy the code on the left side of `:` is executed.
If falsy, the right side after `:` executed.

On line 3, Ruby first evaluates `x < 7`. The comparison operator `<` returns 
`true` or `false`. `x < 7` (`5 < 7`) returns `true`, which is a truthy 
value. Then, `y` is executed, and `10` is returned and output.
=end