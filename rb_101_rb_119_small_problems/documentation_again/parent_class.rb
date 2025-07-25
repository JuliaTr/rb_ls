=begin
Modify the code to print just the public methods that are 
defined or overridden by the `String` class to exclude all 
members that are only defined in `Object`, `BasicObject`, and
`Kernel`?
=end

s = 'abc'
puts s.public_methods.inspect

=begin
All public methods of String are output, including the methods
inherited from `Object` (which inherits other methods from the 
`BasicObject` class and `Kernel`)
=end


## Solution:
s = 'abc'
puts s.public_methods(false).inspect

# The output includes only methods of `String` class.
