# What will the following code print and why?
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a       # 7

=begin
Output is `7`.

On line 2, a local variable `a` is initialized and references
an Integer object `7`.

On line 8, an object refeenced by `a` is passed as an argument
to the `my_value` invocation, returning `17`. Arguments are bound with parameters.

Lines 4-6 contain `my_value` method definition with a parameter 
`b`, which is method's local variable.

On line 5, the `b += 10` returns `17`.

Methods are self-contained, accessing from outer scope only 
through arguments and parameters. 

The `+=` method isn't mutating, and it doesn't mutate object in the 
outer scope. This demonstrates Ruby's behavior as if pass-by-value.

However, Ruby behaves more as if pass-by-value-of-the-reference, 
because parameters recieve copy of the reference of the object, 
but not the copy of object itself.

On line 9, the object referenced by `a` is passed as an argument
to the `puts` method, outputing `7`, which wasn't mutated due to 
`+=` operation in the method's body.
=end
