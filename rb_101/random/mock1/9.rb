# 9.  What will the following code output and return? Explain your reasoning.

def mysterious_total(subtotal)
  if block_given?
    subtotal + yield
  else
    subtotal
  end
end

puts mysterious_total(3) { 2 }  # 5
puts mysterious_total(3)        # 3

# Describe what's going on in this code snippet.
# Follow-up: What concept is displayed in this code snippet?

=begin
What will the following code output and return?

Return values are output which is `5` and `3` on separate 
lines in the console.


Describe what's going on in this code snippet.

On lines 13, 14, an Integer object with a value of `3` is passed as
an argument to the `mysterious_total` method invocations. 

On line 13, the block `{ 2 }` without a parameter is passed as 
an argument to the `mysterious_total(3)` invocation.

The return values of the `mysterious_total(3) { 2 }` is `5`, and of
`mysterious_total(3)` is `3`.

On lines 5-11, inside the method definition, in the `if` 
statement the `block_given?` method as a condition, returning `true`
if a block is passed to the method invocation. On line 13, `{ 2 }`
is passed to the method invocation, so `subtotal + yield` is executed.
`subtotal` is a parameter, bound with the argument. The keword `yield`
uses the block passed to the method invocation.

If no block is passed, the `else` clause is executed.


Follow-up: What concept is displayed in this code snippet?

Concept is passing and using blocks with methods.
=end