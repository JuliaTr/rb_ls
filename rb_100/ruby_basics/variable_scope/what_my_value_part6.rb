# What will the following code print, and why? 
a = 7

def my_value(b)
  b = a + a
end

my_value(a) # NameError: undefined local variable or method `a' for main
puts a      # not executed

=begin
The output is `NameError: undefined local variable or method `a' for main`.

On line 2, a local variable `a` is initialized and references an Integer
object with a value of `7`.

`7` referenced by `a` is passed as an argument to the `my_value` (line 8)
and the `puts` (line 9) methods invocations. The `my_value(a)` returns `NameError`.
Line 9 isn't executed at all because the `NameError` message on line 8.

Lines 4-6 contain a method definition with a parameter `b`. On line 5,
`b = a + a` cause an error because `a` isn't initialized and not 
assigned to any variable before.

Because method definitions are self-contained in terms of variable scope.
`b` and `a` its separate local variable. Method's `a` isn't the same 
variable as `a` in the outer scope. 

Methods can access data from the outer scope only via arguments and parameters.
`b` receives receives a copy of the reference of object passed as
an argument to the method invocation. However, on line 5, `b` is reassigned
to a different value, which isn't assigned to `a` yet.

So, local variable initialized inside the method definition are not visible
outside the method definition. Local variables initialized outside the
method definition are not visible inside the method definition
=end