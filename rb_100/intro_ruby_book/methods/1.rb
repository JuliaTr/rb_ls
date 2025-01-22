=begin
Exercise:
Write a program that prints a greeting message. This program 
should contain a method called `greeting` that takes a `name` 
as its parameter and returns a string.
=end

# Solution:
def greeting(name)
  "Welcome, #{name}"
end

puts greeting('Yuliia')

# Output: Welcome, Yuliia

=begin
Description:
On line 13, a String object with a value of `'Yuliia'` is passed
as an argument to the `greeting` method invocation. The return 
value of `greeting('Yuliia')` is passed as an argument to the 
`puts` method call, outputting `Welcome, Yuliia!` to the console.

On lines 9 - 11, there's a method definition with a parameter 
`name`, which is the method's local variable. `name` is bound 
to the argument, `'Yuliia'`, so `name` references `'Yuliia'`.

On line 10, the object referenced by `name` is interpolated
into a string. As line 10 is the last and the only method's 
line evaluated and executed, Ruby implicitly returns 
`"Welcome, Yuliia!"` for further output. 

This demonstrates method definition vs. method invocation 
concept.
=end


# Experiments:
def greeting(name='stranger')
  "Welcome, #{name}!"
end

puts greeting('Yuliia')
puts greeting

# Output: 
# Welcome, Yuliia!
# Welcome, stranger!
