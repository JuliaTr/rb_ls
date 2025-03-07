# 2. What will be the output and return value of the following 
# code? Explain your reasoning.

def modify_string(str)
  str << ' world'
end

greeting = 'hello'
modify_string(greeting)
puts greeting   # hello world

# What will be the output and return value of the following 
# code? 
# Follow-up: What concept is demonstrated in this code snippet?

=begin
Output is `hello world`.

Return value of `modify_string(greeting)` and `str << ' world'` 
is  `"hello world"`; `puts greeting' is `nil`.

Explain your reasoning.

On line 9, a local variable `greeting` is initialized and references
a string object with a value of `'hello'`.

On line 10, the object referenced by `greeting` is passed as an
argument to the `modify_string` method invocattion.

Inside the method, defined on lines 5-7, on line 6, the `<<`
invoked on the object referenced by `str` mutates the original
object in the outer scope by concatenation `' world'` to it.

On line 11, the object referenced by greeting in passed as an argument
to the `puts` method invocation, outputing `hello world` to the console.


Follow-up: What concept is demonstrated in this code snippet?

Concept is the behavior of pass-by-reference due to mutation of 
the original object in the outer scope, as method definitions have 
their own scope. However, Ruby is pass-by-value-of-the-reference, 
because arguments pass the copy of the reference
of the object, not the copy of the object, to the bound parameters.
=end