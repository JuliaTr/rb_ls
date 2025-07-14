=begin
Write a program that asks the user whether they want the 
program to print "something", then print it if the user 
enters y. Otherwise, print nothing.

Examples:
$ ruby something.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something.rb
>> Do you want me to print something? (y/n)
n

$ ruby something.rb
>> Do you want me to print something? (y/n)
help
=end

puts '>> Do you want me to print something? (y/n)'
answer = gets.chomp

puts 'something' if answer == 'y'

=begin
>> Do you want me to print something? (y/n)
y
something
$ ruby print_something_part1.rb
>> Do you want me to print something? (y/n)
n
$ ruby print_something_part1.rb
>> Do you want me to print something? (y/n)
help
=end
