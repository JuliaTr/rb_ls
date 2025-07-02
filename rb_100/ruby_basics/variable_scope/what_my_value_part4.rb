# What will the following code print, and why? 
a = 'Xyzzy'

def my_value(b)
  b[2] = '-'
end

my_value(a)  # "-"
puts a       # Xy-zy

=begin
Output is `Xy-zy`.

On line 2, a local variable `a` is initialized and references 
a String object with a value of `Xyzzy`.

The object referenced by `a` is passed as and argument to the 
`my_value` method (line 8) and the `puts` method (line 9) invocation.
Arguments are bound to parameters.

The `my_method(a)` returns `"-"` (line 8). The `puts a` outputs
`Xy-zy` to the console and returns `nil` (not used here).

Lines 4-6 contain method definition with a parameter `b` 
(method's local variable). On line 5, the mutating `#[]=` invoked
on value refernced by `b`, which is `Xyzzy`. The `b[2] = '-'` 
reassigns `z` (string character with indice 2) to a new value `-`.

Strings, array, hashes are mutable in Ruby. Even though method definitions are self-contained
in terms of variable scope, invoking mutating methods inside method
definitions mutates the original object in the outer scope. This Ruby
behavior is as if "pass-by-reference", even though Ruby is mostly
"pass-by-value-of-the-reference". This is becsuse parameters 
always receive a copy of the refernce of the object, not a copy of the
object itself, passed as arguments to the method definition.

So, `puts a` (line 9) outputs the mutated value `Xy-zy` 
=end
