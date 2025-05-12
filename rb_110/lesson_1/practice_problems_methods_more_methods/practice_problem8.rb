# How does `take` work? Is it destructive? How can we find out?
arr = [1, 2, 3, 4, 5]
p arr.take(2)   # [1, 2]
p arr

=begin
*How does `take` work? Is it destructive?*
The non-destructive `#take` method returns a new array with a
number of elements from original array passed as arguments to 
the method.

*How can we find out?*
We can output the return value of `#take` and consult the documentation:
"REturns a new Array containing the first `n` element of `self`, where
`n`n is a non-negative Integer; does not modify `self`."

On line 2, a local variable `arr` is initialized and references
an Array object `[1, 2, 3, 4, 5]`.

On line 3, an Integer object with a value of `2` is passed as
as argument to the `#take` method invoked on the object referenced
by `arr`, returning a new Array object `[1, 2]`.
=end
