=begin
Exercise:
What does `x` print to the screen in each case? Do they both 
give errors? Are the errors different? Why?
=end

# Code snippet 1:
x = 0

3.times do
  x += 1    # x = x + 1
end

puts x   
# Output: 3


# Code snippet 2:
y = 0

3.times do 
  y += 1
  x = y
end

puts x   
# Output: undefined local variable or method `x' for main:Object
#         (NameError)


=begin
Question: 
What does `x` print to the screen in each case? Do they both 
give errors? Are the errors different? Why?

Answer:
In Code snippet 1, `x` prints `3` to the screen. In Code
snippet 2, `x` prints the `NameError` message.

Do they both give errors? Are the errors different? Why?
No, only Code snippet 2 gives the NameError message. 

On line 23, `x` is initialized inside the block, constituted 
by `do...end` keywords, which is passed to the `times` method 
invocation.

According to the variable scope regarding blocks concept, 
variables initialized inside the block are not available for 
access outside of the block. That's why Ruby cannot access `x`
in the outer scope.
=end
