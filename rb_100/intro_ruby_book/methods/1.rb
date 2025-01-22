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


# Experiments:
def greeting(name='stranger')
  "Welcome, #{name}!"
end

puts greeting('Yuliia')
puts greeting

# Output: 
# Welcome, Yuliia!
# Welcome, stranger!