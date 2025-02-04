# Predict the output of this code:
a = true
b = false
c = nil
puts (a && b) || c

=begin
Answer:

The output is an empty line in the console.

On lines 1-3, local variables `a`, `b`, `c` are initialized and reference
boolean values `true`, `false`, and Nil object `nil`, respectively. On line
4, the return value of the logic expression `(a && b) || c` evaluation is passed
as an argument to the `puts` method invocation, outputting an empty line.

Upon evaluation of the expression with logical AND (`&&`) and OR (`||`) operators,
one of the operands is returned. If the first operand in the expression with 
`&&` is falsy, short-circuiting (evaluation stops) is executed, and the first falsy 
value is returned. The evaluation continues as long as the operands are truthy, 
stopping at the first falsy value or returning the last value if all are truthy.
If there's no falsy value in the expression, the last truthy value is returned.

If the first operand in the expression with `||` is truthy, short-circuiting 
is executed, the first truthy value is returned. If the first value is falsy,
the evaluation continues till the first truthy value. If there's no truthy
value in the expression, the last falsy value is returned.

In Ruby, everything is truthy, except `false` and `nil`. `true` and any 
other object except `false` and `nil` are truthy. When the value is evaluated
for truthiness, it is evaluated as a boolean expression.

`&&` has higher precedence than `||`. However, `(a && b)` will still be 
evaluated first from left to right due to parentheses. `a && b` (`true && false`)
doesn't short-circuit, returning `false`. Then, `false || c` (`false || nil`) 
return `nil`, since both operands are falsy.

As `puts` calls the `to_s` method on the object passed to it, `nil.to_s` returns
`""`. That's why the output is the empty string.
=end