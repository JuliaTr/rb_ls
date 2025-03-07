# 10. Consider the following code:

a = [1, 2, 3]
b = a
c = a.dup

a[1] = 4
b[2] = 5
c[0] = 6

p a # [1, 4, 5]
p b # [1, 4, 5]
p c # [6, 2, 3]

# What will be the output? Explain your reasoning.
# Follow-up: What concept is demonstrated in this code snippet?

=begin
# What will be the output? Explain your reasoning.
Output is `[1, 4, 5]`, `[1, 4, 5]`, `[6, 2, 3]`

On line 4, a local variable `a` is initialized and references an Array
object with a collection of integers `[, 2, 3]`. On line 5, a local
variable `b` is initialized and references an object referenced by `a`.
`b` and `a` point to the same object.

On line 6, a local variable `c` is initialized and references a
shallow copy returned by `a.dup`, which is a new object.

On lines 8, 9, 10, the elements of the arrays where reaasigned by 
`[]=`, so we see modified objects referenced by `a`, `b`, `c` on lines 
12, 13, 14. 

# Follow-up: What concept is demonstrated in this code snippet?
Concept is variables as pointers. Several variables point to the
same object in the physical place in the computer's memory. Any modification
in the object will be see when variables reference this object.
=end
