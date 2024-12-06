# What will the following code output? Explain why.
a = "hello"
b = a
a << " world"
puts b    # hello world

=begin
Improved explanation:

The output is `hello world`.

It illustrates the following concepts: variables as pointers, object 
mutation, affecting multiple variables pointing to the same object.

On line 1, a local variable `a` is initialized and references a String 
object with the value `"hello"`. On line 2, a local variable `b` is 
initialized and references the same object as `a`, pointing to the 
same object, and having the same `object_id`. On line 3, the mutating 
`String#<<` method, which mutates the caller, not creating and not 
returning new objects, is invoked on the same object referenced by `a`, 
appending `" world"` to it and mutating it. This is because, in Ruby, 
strings, arrays, and hashes are mutable, contrasting with integers, 
which are immutable. 

On line 4, the object referenced by `b` is passed as an argument to 
the `Kernel#puts` method invocation, outputting `hello world` to the 
console.

The `#puts` method returns `nil`, but the return value isn't used and 
doesn't affect the output and the behavior of the code.
=end
