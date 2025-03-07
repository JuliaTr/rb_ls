# 5. Examine the following code:

def greet(name = 'stranger', excited = false)
  greeting = "Hello, #{name}"
  greeting += '!' if excited   # greeting = greeting + '!'
  greeting
end

puts greet('Ruby', nil)    # Hello, Ruby
puts greet(excited: true)  # Hello, {:excited=>true}

# What will be the output? Explain why.
# Follow-up: What concept is demonstrated in this code snippet?

=begin
# What will be the output? Explain why.
Output is `Hello, Ruby` and `Hello, {:excited=>true}`.

On line 5, the argument for the default parameter `name` of the method invocation
is provided as an arument, which is `Ruby`. As for the `greet('Ruby', nil)`
`nil` as a second argument, the condition the second default parameter
`excited` if falsy, becuase it's `nil` and `nil` is falsy. So line 6 is evaluated, 
but not executed. "Hello, Ruby"` is returned and output.

`excited: true` is treated as a hash (because of `key: value` syntax)
in the argument. However, as it's the only argument, 
the parameter `name` treats it as the first 
argument. So the value referenced by the method's local variable
`greeting` asigned on line 5 is returned. So, line 6 is evaluated
and executed, again.


# Follow-up: What concept is demonstrated in this code snippet?
Concept is default parameters. They are used when the argument, which 
are bound with parameters, isn't provided in the method invocation. 
=end