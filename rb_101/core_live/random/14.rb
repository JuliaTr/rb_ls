# What will the following code output?
puts !!false
puts !!nil
puts !!0
puts !!""
puts !!"hello"


# Answer:
# The output is:
# false
# false
# true
# true
# true

=begin
On lines 1-5, the return value of the double negation (`!!`) is passed
as an argument to the `puts` method invocation outputting `false`, 
`false`, `true`, `true`, and `true` for each expression on a new line.

In Ruby, everything is truthy except `false` and `nil`. It means that `true`
and any other object except `false` and `nil` are truthy. When the expression
is evaluated for truthiness, it is evaluated as a boolean expression.

The logical NOT (`!`) operator and `!!` convert any value to its boolean 
equivalent, returning an opposite boolean value `true` or `false`. 

On lines 1-2, `false` and `nil` are falsy values, `!false` and `!nil`
return `true`. `true` is a truthy value. `!true` returns `false`. So, 
`!!false` and `!!nil` return `false`, which is output.

On lines 3-5, `0`, `""`, and `"hello"` are truthy values. `!0`, `!""`, 
`!"hello"` returns `false`. `false` is a falsy value. `!false` returns 
`true`. So, `!!0`, `!!""`, and `!!"hello"` return `true`, which is output.

Compared to how other languages treat `0` and `""` differently, in Ruby
`0` and `""` are considered truthy values.

`puts` calls to the `to_s` method converting automatically the value passed 
to it into a string, which we see in the output.
=end

