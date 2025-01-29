=begin
Exercise:
Write a program that takes a number from the user between 0 
and 100 and reports back whether the number is between 0 and 
50, 51 and 100, or above 100.
=end

# Solution:
puts "Type a number between 0 and 100:"
number = gets.chomp.to_i

if number < 0
  puts "#{number} should be greater than 0."
elsif number <= 50
  puts "#{number} is between 0 and 50."
elsif number <= 100
  puts "#{number} is between 51 and 100."
else
  puts "#{number} should be greater than 100."
end

=begin
$ ruby 3.rb
Type a number between 0 and 100:
-9
-9 should be greater than 0.
$ ruby 3.rb
Type a number between 0 and 100:
0
0 is between 0 and 50.
$ ruby 3.rb
Type a number between 0 and 100:
50
50 is between 0 and 50.
$ ruby 3.rb
Type a number between 0 and 100:
51
51 is between 51 and 100.
$ ruby 3.rb
Type a number between 0 and 100:
100
100 is between 51 and 100.
$ ruby 3.rb
Type a number between 0 and 100:
101
101 should be greater than 100.
=end
