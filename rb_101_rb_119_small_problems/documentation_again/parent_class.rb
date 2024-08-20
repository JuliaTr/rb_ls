# Modify the code to print just the public methods that are defined or overridden by the `String` class to exclude all members that are only defined in `Object`, `BasicObject`, and `Kernel`?

s = 'abc'
puts s.public_methods.inspect


## Solution:
s = 'abc'
puts s.public_methods(false).inspect