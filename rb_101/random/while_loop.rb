# What is the output? Explain in detail what is going on. What concept?

a = 1

while a <= 3 do
  b = 2
  a *= b
end

puts a    # 4
puts b    # 2

=begin
What is the output?

Output is `4` and `2`.
__________________________________________________________________
Explain in detail what is going on.

On line 1, a local variable `a` is initialized and references
an Integer object with a value of `1`

On lines 3-6, there's a `while` loop with a condition `a <= 3`.
While a condition is truthy the looping is continue. 

On line 4 a local variable `b` is initialized and references
an integer `2`. On line 5, there's a reassignment `a *= b`,
multiplying `a` and `b`. After the first loop `a`
is `4`, so the condition is no longer truthy, and the program exits
the loop.
______________________________________________________________________
What concept?

The concept is local variable scope regarding blocks; particularly 
`while`, `until`, `for` loops don't have their own scope. So, on lines 8-9, 
we can access `a` and `b` to output the values, which are `4`
and `2`. Here, `do...end` keywords don't create a block. Blocks need to be 
passed to method invocations to create their scope. `while` is Ruby 
construct, not a method. It is the same as `while do`. So, variables 
initialized inside `while` loop can be accessed outside of the loop, 
because this is the same scope. 
=end
