# Determine the output of this snippet:
def my_method(param)
  param && param + 1
end

puts my_method(5)
puts my_method(nil)

=begin
The output is `6` and an empty line.

On lines 5, 6 the `my_method` method is invoked with arguments `5` and 
`nil` passed to it, respectively.

Lines 1-3 contain a method definition with an argument and a method's 
local variable `param`. On line 2, the expression with the logical 
AND (`&&`) operator (`param && param + 1`) is evaluated and returned by 
the method.

The `+` method has a higher precedence than `&&`. So, `param + 1` is 
evaluated first. 

`&&` returns the last truthy value if the first operand is truthy. Like 
`5 && 5 + 1` is `6`, which is truthy. `&&` returns the first falsy value 
due to short-circuiting. `nil && nil + 1` is `nil`, which is falsy.

The `puts` method calls the `to_s` method on the object passed to it, so `nil.to_s`
returns `""`. That's why the output is the empty string.
=end