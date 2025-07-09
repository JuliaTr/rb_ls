# Using a while loop, print 5 random numbers between 0 and 99 (inclusive).
numbers = []

while numbers.length < 5
  numbers << rand(0..99)  # better to use `rand(100)` due to efficiency
end

puts numbers

=begin
$ ruby print_while.rb
90
60
5
35
7
$ ruby print_while.rb
7
42
72
56
42
=end