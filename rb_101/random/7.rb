# Describe what’s happening in this code:
def multiply_by_5(n)
  n * 5
end

puts multiply_by_5(10) == 50                      # true
puts multiply_by_5(10) == multiply_by_5(10)       # true
puts multiply_by_5(10).equal?(multiply_by_5(10))  # true


=begin
Explanation:

On lines 5-7, the `multiply_by_5(10)` method invocation returns an Integer 
object `50` is compared to `50` using the `#==` method (on lines 5, 6), and
the `#equal?` method (on line 7). `50` and `50` are equal, so the return 
value is a boolean object `true` for each line. The output is `true` three
times to the console by the `Kernel#puts` method invocation.

Lines 1-3 contain a method definition with a parameter `n`, which is
bound with an Integer object `10` passed as an argument to the 
`multiply_by_5` method invocation. On line 1, `n` is a local variable 
to the method definition, which is initialized, references, and points to
`10`. 

In Ruby, methods definition have their own scope. The inner scope 
cannot access the outer scope without arguments and parameters. 
Method's definition parameters receive a copy of the object's reference,
not a copy of the object. Sometimes, Ruby's behavior is referred to
as "pass by value of the reference" or "call by sharing".

On line 2, the `Integer#*` method is invoked on the object referenced
by `n` and `5` gets passed to it as an argument, returning a new Integer
object with the multiplied value by 5.

The `#==` and `#equal?` methods return booleans either `true` or 
`false`. The `#==` method returns `true` if the calling object is
numerically equal to another object. However, the `#equal?` method 
returns `true` if the another object is the same type and and has equal 
values. For example:
=end

1 == 1.0      # => true
1.equal?(1.0) # => false

=begin
`multiply_by_5(10).equal?(multiply_by_5(10))` is the same as `50.equal?(50)`,
which returns `true`. This is because `50` and `50` are the same integer
with the same value and `object_id` due to the immutability of integer data 
type. 

In Ruby, integers, symbols, booleans, and nil are immutable data types.
Integers with the same value have the same `object_id`, sa this is the 
same object, not a different one. This is true for integers in Ruby due to 
their immutability. Its value cannot be mutated. Any Ruby's built-in method
invoked on an integer will return a new object without mutating the caller.

The provided code snippet demonstrates the following concepts: local 
variable scope regarding method definitions, an object passing strategy 
through arguments and parameters, non-mutating method invocation on the 
immutable objects, and variables as pointers.
=end
