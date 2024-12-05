# TODO: come back in later courses and review the answer!!!

# Describe the difference between `==` and `equal?` in Ruby. Provide an 
# example to illustrate your explanation.

=begin
The `==` and the `equal?` methods in Ruby return booleans either `true` or
`false`. The `==` returns `true` if the calling object is numerically 
equal to another object. However, the `equal?` method returns `true` if 
another object is the same type and has equal values. For example:
=end

1 == 1.0      # => true 
1.equal?(1.0) # => false

=begin
On line 1, an Integer object `1` is numerically equal as a Float object 
`1.0`. That's why `1 == 1.0` expression returns `true`. However, on 
line 2, the `equal?` method compare that integer and float are different 
data types with different values. That's why `1.equal?(1.0)` expression
returns 'false'.
=end