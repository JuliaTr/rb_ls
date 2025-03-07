# 4.  Examine the following code:

def greet(name = "World")
  "Hello, #{name}!"
end

puts greet          # Hello, World!
puts greet("Ruby")   # Hello, Ruby!

# Describe what's going on in this code snippet.
# Follow-up: What concept is displayed in this code snippet?

=begin
Describe what's going on in this code snippet.

On lines 9, 10, the `greet` method is invoked. On line 9, no arguments
passed to it. On line 10, a String object `"Ruby"` is passed as an 
argument to it. The return values of `greet` and `greet("Ruby")` are
passed to the `puts` method invocation, outputting `Hello, World!`
and `Hello, Ruby!` on each line, respectively, to the console.

On lines 5-7, the method's parameter `name` is assigned to a default
value `"World". On line 6, The object referenced by `name` is interpolated
into the string, which is returned by the method invocation.


Follow-up: What concept is displayed in this code snippet?

Concept is default parameters. They are used when the argument, which 
are bound with parameters, isn't provided in the method invocation. 

That's why on line 9 the default parameter `World` was used to be 
interpolated into the string. However, on line 10, there's no need 
in default parameter. Ruby has passed `"Ruby"` to the parameter 
to be used in the method's body.
=end