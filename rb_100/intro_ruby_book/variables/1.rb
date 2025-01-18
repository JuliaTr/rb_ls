=begin
Exercise:
Write a program called `name.rb` that asks the user to type 
in their name and then prints out a greeting message with 
their name included.
=end

# Solution:
# name.rb
puts "What's your name?"
name = gets.chomp

puts "Hi #{name}!"

=begin
$ ruby 1.rb
What's your name?
Yuliia
Hi Yuliia!
=end
