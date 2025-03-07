# 3.  What will be the output of the following code? Explain your reasoning.

a = [1, 2, 3, 3]
b = a
c = a.uniq

puts a.object_id   # 60
puts b.object_id   # 60
puts c.object_id   # 80

# Describe what's going on in this code snippet.
# Follow-up: What concept is displayed in this code snippet?

=begin
Describe what's going on in this code snippet.

On line 5, a local variable `a` is initialized and references an
Array object with a collection of integers `[1, 2, 3, 3]`.

On line 6, a local variable `b` is initialized and references an
object referenced by `a`. So, `a` and `b` point to the same object
in the computer's memory.

On line 7, the `uniq` method is invoked on the object referenced
by `a` return a new array object with unique values, `[1, 2, 3]` 
from the original array. A local variable `c` is initialized and
references the return value of `a.uniq`.

On line 9-11, the `object_id` method is invoked on objects referenced
by `a`, `b`, `c`. The return valus are passed as arguments to the
`puts` method invocations, outputting `60`, `60`, `80` to the console. 


Follow-up: What concept is displayed in this code snippet?

Concept is variables as pointers. 

`a` and `b` point to the same object `[1, 2, 3, 3]` in the physical
place in the computer's memory. So, their object IDs are the same, 
`60`. 

The `uniq` returns a new object with different object ID, `80`. `c`
point to this new object.
=end