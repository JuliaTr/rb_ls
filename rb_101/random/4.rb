# What does the following code output, and why?
def change_name(name)
  name = "bob"
end

name = "jim"
change_name(name)
puts name   # jim

=begin
Explanation:

It outputs `jim`.

It illustrates the following concepts: local variable scope regarding
method definition, object passing strategy through arguments and 
parameters, method's invocation implicit return value without 
affecting the original object, reassignment, variables as pointers, 
"pass by value" behavior.

On line 5, a local variable `name` is initialized and references a 
String object with the value `"jim"`. On line 7, the object referenced 
by `name` is passed as an argument to the `change_name` method invocation.

Lines 1-3 contain method definition with a parameter `name`
bound with the argument. On line 1, a local to the method variable 
`name` is initialized, references, and points to `"jim"`.

Because of, in Ruby, method definition's parameters receive a copy of 
the object's reference, not a copy of the object, sometimes Ruby's 
behavior is referred to as "pass by value of the reference" or "call 
by sharing". 

On line 2, `name` is reassigned to a new string object `"bob"` with 
a new `object_id`. Now `name` points to `"bob"` and no longer points 
to `"jim"`.

In Ruby, the assignment (`=`) operator is used for reassignment, assigning
a new object to an existing variable without mutating the original object
despite strings, arrays, and hashes being mutable in Ruby. 

Upon the method invocation, Ruby exhibits behavior similar to 
"pass by value" in this specific case for reassignment. In Ruby, this 
behavior is consistent for mutable (strings, arrays, and hashes), and 
immutable (integers, floats, symbols, nil, booleans) data types.

On line 8, the object referenced by `name` is passed as an argument 
to the `Kernel#puts` method invocation outputting the original object 
`jim` to the console. This happens because, in Ruby, the outer scope 
cannot access the inner scope of the method definition, as they are 
self-contained. At the same time, the inner scope can access variables 
only through arguments and parameters.
=end