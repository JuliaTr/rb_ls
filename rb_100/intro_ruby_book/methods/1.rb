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
def greeting(name = 'stranger')
  "Welcome, #{name}!"
end

puts greeting('Yuliia')
puts greeting

# Output: 
# Welcome, Yuliia!
# Welcome, stranger!

=begin
Description:
On line 43, a String object with a value of `'Yuliia'` is 
passed as an argument to the `greeting` method invocation.
On line 44, `greeting` is invoked without an argument.

On lines 39 - 41, there's a method definition with a parameter
`name`. `name` is the method's local variable, which references 
a default String object with a value of `stranger`. In the
method's body, the object referenced by `name` is interpolated
into the string, which is returned implicitly upon the method's
invocation. 

On lines 43-44, the return value of the method invocations are
passed as arguments to the `puts` method, outputting 
`Welcome, Yuliia!` and `Welcome, stranger!` on separate lines,
respectively, to the console.

Here, the default parameter `name` provides a backup value
in case no arguments are passed to the method invocation.
That's why we see the output, showcasing the use of the argument
and the default parameter. Ruby allows nethods to have optional
parameters.

This demonstates the default parameters concept.
=end
