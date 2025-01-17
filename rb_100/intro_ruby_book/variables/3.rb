=begin
Exercise:
Add another section onto name.rb that prints the name of the 
user 10 times. You must do this without explicitly writing 
the puts method 10 times in a row. Hint: you can use the 
times method to do something repeatedly.
=end

# Solution:
puts "What's your name?"
name = gets.chomp

10.times { puts name }

=begin
$ ruby 3.rb
What's your name?
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
Yuliia
=end
