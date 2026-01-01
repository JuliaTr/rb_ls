=begin
Update the following code so that, instead of printing 
the values, each statement prints the name of the class 
to which it belongs.

String
Integer
Array
=end

puts "Hello"
puts 5
puts [1, 2, 3]

=begin
Hello
5
1
2
3
=end


## Solution
puts "Hello".class
puts 5.class
puts [1, 2, 3].class

=begin
As expected:

String
Integer
Array
=nd

