# What is the result of this expression?
result = nil || false || 0 || "" || []
puts result

=begin
Answer:

The result of the expression is output: `0`.

On line 1, the return value of the evaluated expression 
`nil || false || 0 || "" || []` is assigned to an initialized 
local variable `result`, which is output as `0` on line 2.

When an expression with a logical OR (`||`) operator is evaluated, one 
of the operands is returned. If the first operand is a truthy value, the 
evaluation stops (short-circuiting), and this value is returned. If the 
first value is a falsy value the evaluation is continued till the first truthy
value. If there is no truthy value in the expression the last falsy value 
is returned.

In Ruby, everything is truthy, except `false` and `nil`. `true` and any 
other object except `false` and `nil` are truthy. When the value is evaluated
for truthiness, it is evaluated as a boolean expression.

Here, `nil || false` returns `false`. `nil` and `false` are falsy values.
Then, evaluation continues: `false || 0` returns `0`. Compared to how other 
languages treat `0`, in Ruby, `0` is a truthy value. The evaluation stops. 
The rest of the expression (`"" || []`) are not evaluated due to short-circuiting.
Although these values are also considered truthy in Ruby.
=end