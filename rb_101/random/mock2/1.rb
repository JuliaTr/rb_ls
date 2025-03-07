# 1. Explain the difference between `puts` and `return` in Ruby. How 
# do they affect the output and return value of a method?

# Ex.1
def greet
  puts "hi"
end

p greet

# Output:
# hi
# nil

# Ex.2
def greet2
  puts "hi"
  return "hello"
  "good-buy"
end

p greet2

# Output:
# hi
# "hello"

=begin
The `puts` method outputs the value of an object, passed to it 
as an argument (Ex.1, line 6; Ex. 2, line 17), to the console. 
The `puts` returns `nil` on line 9, so the return value of the 
`greet` method invocation is `nil`, as line 6 is the only line evaluated
and executed. The `greet`'s method call return value is output by
the `p` method call. 

In Ruby, methods implicitly return the last line evaluated and
executed if no `return` keyword is provided.

The `return` is a keyword which explicitly returns the object 
passed to it from the method and exits the method in Ex. 2, 
line 18. So, on line 22, the `greet2` method invocation returns `"hello"`.
The method's return value is passed as an argument
to the `p` method call displaying `"hello"` to the console.
=end
