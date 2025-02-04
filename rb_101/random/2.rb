# Explain what happens in the following code and why:
a = [1, 2, 3, 3]
b = a
c = a.uniq  # => [1, 2, 3]

=begin
Explanation:

On line 1, a local variable `a` is initialized and references an Array
object with integers with the value of `[1, 2, 3, 3]`. On line 2, a local 
variable `b` is initialized, references, and points to the same object as 
`a` with the same `object_id`. `b = a` creates a new reference, not 
a copy. On line 3, the non-mutating `Array#uniq` method without (`!`) is 
invoked on the object referenced by `a`. A local variable `c` is 
initialized to reference the return value of the `#uniq` method call. 

The `#uniq` method creates and returns a new array, instead of modifying 
the existing one based on the elements of the array referenced by `a`,
without duplicates `[1, 2, 3]` with a new `object_id`. This doesn't 
affect the object referenced by `a` and `b` despite strings, arrays, 
and hashes being mutable in Ruby, the `#uniq` was designed as a 
non-mutating method to allow flexibility and to preserve the original 
data. 

Now, `a` and `b` return `[1, 2, 3, 3]`, `c` returns `[1, 2, 3]`.

It illustrates the following concepts: variables as pointers, non-mutating
method invocation on the mutable object without affecting multiple variables
pointing to the original object.
=end