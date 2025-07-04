# What will the following code print, and why?
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a  # NameError: undefined local variable or method `a'

=begin
Output is `undefined local variable or method `a' for main:Object (NameError)`

On line 2, a local variable `array` is initialized and refences
an Array object with a collection of integers `[1, 2, 3]`.

Lines 4-6 contain a `do..end` block passed as an argument to 
the `each` method invoked on the object referenced by `array`.
The block's parameter and local variable is `element`. On line 5
the block's local variable `a` is initialized and references an
element upon each iteration from the array, which `element` 
references.

Local variables initialized inside the block aren't accessible 
from the outer scope. So, the call to `puts a` will output an 
error.
=end
