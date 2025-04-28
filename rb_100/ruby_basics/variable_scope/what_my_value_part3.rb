# What will the following code print, and why?
a = 7

def my_value(b)
  a = b
end

my_value(a + 5) # => 12
puts a  # 7

=begin
On line 2, a local variable `a` is initialized and references
an Ineger object with a value of `7`.

On line 8, the `a + 5` is passed as an argument to the `my_value`
method invocation returning `12`. Arguments bound with parameters.

Lines 4-6 contain `my_value` method definition with a parameter
`b`, which is method's local variable. On line 5, the method's 
local variable `a` is initialized and references the same object
as `b`, which is `7`. `a` and `b` point to the same object.

Methods are self-contained with own local variable scope.

The `=` operator (line 5) and the `+` method (line 8) don't
mutate the object referenced by `a` (line 2). That's why the
call to `puts a` outputs `7` to the console.

Here, Ruby behaves as if pass-by-value-of-the-reference, because
parameters receive the copy of the reference of the object, not the
copy of the object itself.
=end
