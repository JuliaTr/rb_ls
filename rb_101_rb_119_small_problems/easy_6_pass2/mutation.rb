# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
p array2 
# ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", 
# "Grouho", "Zeppo"]

=begin
`array1` and `array2` share values. On line 5
`<<` copies references of values from `array1` and pass to `array2`.
It demonstrates Ruby's behaviour as if "pass by reference".

When an object is passed as an argument to a method invocation (custom or
Ruby's built-in), a copy of the reference to the object is shared.
If a calling object was mutated, these references could be further mutated 
in both objects by another mutating methods.
=end
