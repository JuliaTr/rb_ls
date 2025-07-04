# What will the following code print, and why?
a = 7
array = [1, 2, 3]

array.each do |a| # shadowing
  a += 1
end

puts a  # 7

=begin
Output is `7`.

On line 2, a local variable `a` is initialized and references
an Integer object with a value of `7`. 

On line 3, a local variable `array` is initialized and references
an Array object with a collection of integers `[1, 2, 3]`.

Lines 5-7 contain a `do..end` block passed as an argument to
the `each` method invoked on the object referenced by `array`.
Inside a block `a` is it's parameter and local variable. The block 
executes 3 times incrementing each element by 1. However, this
doesn't influence the output on line 9, because this isn't reassignemt
of the local variable in the outer scope.

Even though the parameter `a` has the same name as `a` in the 
outer scope, it's different variable. This is a variable shadowing. 
The parameter shadows a local varible in the outer scope. Local 
variable in the inner scope is in shadow. So the block's inner 
scope cannot access or modify it in the outer scope.

So, the call to `puts a` (line 9) outputs `7` to the console,
because the outer scope cannot access the inner scope with
variable shadowing. 
=end
