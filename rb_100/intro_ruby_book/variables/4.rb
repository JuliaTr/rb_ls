=begin
Exercise:
Modify `name.rb` again so that it first asks the user for 
their first name, saves it into a variable, and then does 
the same for the last name. Then outputs their full name all
at once.
=end

# Solution:
# name.rb
puts "What's your first name?"
first_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "Welcome, #{first_name} #{last_name}!"

=begin
$ ruby 4.rb
What's your first name?
Yuliia
What's your last name?
Tryhubniak
Welcome, Yuliia Tryhubniak!
=end
