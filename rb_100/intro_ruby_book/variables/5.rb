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

In the Code snippet 1, a variable `x` is initialized in the
outer scope and references an Integer object with the value 
of `0`. Inside the block, constituted by `do...end` keywords, 
which is passed to the `times` method invocationon, on line 11, 
the return value of `x + 1` is reassigned to `x` three times. 
Because of the reassignment inside the block the `puts x` in 
the outer scope can access `x` inside the block, outputing 
`3` to the console, as a result of incremention. 

In the Code snippet 2, on line 23, `x` is initialized inside 
the block. So, `x` can be accessed only inside the block, but 
not in the outer scope. 

According to the variable scope regarding blocks concept, 
variables initialized inside the block are not available for 
access outside of the block. That's why, in Code snippet 2, 
`put x` in the outer scope cannot access `x` on line 23, resulting
in the NameError message.
=end
