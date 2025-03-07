# 10. Consider the following code:

a = "hello"
b = a
a = "world"
puts a  # world
puts b  # hello

# Describe what's going on in this code snippet.
# Follow-up: What concept is displayed in this code snippet?

=begin
Describe what's going on in this code snippet.

On line 5, a local variable `a` is initialized and references an
String object `"hello"`.

On line 6, a local variable `b` is initialized and references an
object referenced by `a`. So, `a` and `b` point to the same object
in the computer's memory.

On line 7, `a` is reassigned to `"world"`. So, now, it no longer
points to `"hello"'.

On line 8-9, the objects referenced by `a`, `b` are passed as arguments to the
`puts` method invocations, outputting `world`, `hello`, to the console. 


Follow-up: What concept is displayed in this code snippet?

Concept is variables as pointers. 

`a` and `b` point to the same object in the physical
place in the computer's memory. Then, `a` is reaasigned and only `b`
now point to the original object.
=end