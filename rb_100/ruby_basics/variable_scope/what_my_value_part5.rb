# What will the following code print, and why?
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)  # yzzyX
puts a       # Xyzzy

=begin

The output is `Xyzzy`.

On line 2, a local variable `a` is initialized and references a String
object `"Xyzzy"`.

The object referenced by `a` is passed as an argument to `my_value`
(line 8) and `puts` (line 9) methods invocations. The `my_method` 
returns `yzzyX`. The `puts` returns `nil`, which isn't used here.

Lines 4-6 contain method definition with a parameter `b` (method's)
local variable. 

Methods are self-contained in terms of variable scope. Arguments 
are bound to parameters.

On line 5, `b` is reassigned to a new object `'yzzyX'`.
Although, strings are mutable data types, reassignment is non-mutating
operation, which doesn't affect the original object in the outer scope.

Here, Ruby behaves as if "pass-by-value", even though in general Ruby
is more "pass-by-value-of-the-reference" because parameters receive a 
copy of the reference of the object, not a copy of the object 
itself, passed as a parameter.

So, `puts a` outputs `Xyzzy` to the console.
=end
