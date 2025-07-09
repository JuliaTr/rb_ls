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


## Experiment:
numbers = []

while numbers.length <= 5   # starts from 0; [].length  # 0
  numbers << rand(100)
end

puts numbers

# Output: (6 elements instead of 5)
# 29
# 45
# 37
# 58
# 35
# 97

=begin
Iteration 1: 
numbers.length   => 0
0 <= 5           => true
adds 1st element

Iteration 2:
numbers.length   => 1
1 <= 5           => true
adds 2nd element

Iteration 3:
numbers.length  => 2
2 <= 5          => true
adds 3nd element

Iteration 4:
number.length   => 3
3 <= 5          => true
adds 4th element 

Iteration 5:
number.length  => 4
4 <= 5         => true
adds 5th element

Iteration 6:
number.length  => 5
5 <= 5         => true
adds 6th element
=end


p [].length   # 0


counter = 1

while counter <= 5   # starts from 1
  puts "Hello!"
  counter += 1
end

# Output:
# Hello!
# Hello!
# Hello!
# Hello!
# Hello!

=begin
Iteration 1:
1 <= 5     => true
Hello!
counter = 2

Iteration 2:
2 <= 5     => true
Hello!
counter = 3

Iteration 3:
3 <= 5
Hello!
counter = 4

Iteration 4:
4 <= 5
Hello!
counter = 5

Iteration 5:
5 <= 5
Hello!
counter = 6
=end
