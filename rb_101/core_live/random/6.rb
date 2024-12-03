# Explain what is happening in this code line by line. What is output? 
# What is returned? What concept is demonstrated?
def my_method(a)
  a << 5
  a = [2, 3]
  a
end

b = [1]
p b.object_id  # 60
p my_method(b)  
# [2, 3]
# => [2, 3] (if we check in irb)
p b             
# [1, 5]
# => [1, 5] (if we check in irb)
p b.object_id  # 60

=begin
Explanation:

On line 7, a local variable `b` is initialized, references, and points to 
an Array object `[1]`. On line 8, the object referenced by `b` is passed
as an argument to the `my_method` invocation. 

Lines 1-5 contain a method definition with a local to the method variable
`a` as a parameter bound to the argument. On line 1, `a` is 
initialized, references, and points to `[1]`. In Ruby, method definitions 
have their own scope. The outer scope cannot access variables in the 
inner scope without arguments or parameters.

In Ruby, the method's definition parameters receive a copy of the object's 
reference, not a copy of the object itself. Sometimes this behavior is 
referred to as "pass by value of the reference" or "call by sharing".

On line 2, a mutating `Array#<<` method is invoked on the object referenced
by `a`, appending an Integer object `5` to `[1]`, mutating the original 
object in place in the outer scope. Now, `b` points to `[1, 5]`, which 
is the same object with the same `object_id`, but the value is mutated.

On line 3, `[2, 3]` is reassigned to `a` with a new `object_id`. Now,
`a` points to `[2, 3]` and no longer points `[1, 5]`. On line 4, the object
referenced by `a` is returned by the method invocation.

In Ruby, the assignment (`=`) operator is used for reassignment, assigning
a new object to the existing variable without mutating the original object
despite strings, arrays, and hashes being mutable data types. However, when a 
mutating method like `#<<` is invoked it mutates the original object 
in place.

Upon the method invocation, inside the method definition, Ruby exhibits
two behaviors. On line 2, the behaviour is similar to "pass by reference",
as it's not true "pass by reference" due to the original object mutation 
consistent for mutable data types. On line 3, the behavior is similar 
to "pass by value" due to reassignment, creating a new object, even for 
mutable data types.

On lines 8 and 9, `Kernel#p` outputs `[2, 3]` and `[1, 5]`, which are 
the return value of `my_method(b)` and the value of `b`, respectively.

Two return value of `my_method` is `[2, 3]` and the mutated value of `b` 
is `[1, 5]`. These are the same as outputs.

The code snippet illustrates the following concepts: local variable 
scope regarding method definition, object passing strategy through 
arguments and parameters, mutable method invocation on the mutable 
object affecting the original object, variables as pointers, 
reassignment, and behaviors similar to "pass by value" and "pass by 
reference".
=end
