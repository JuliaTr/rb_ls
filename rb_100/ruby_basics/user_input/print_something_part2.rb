=begin
Modify your program so it prints an error message for any 
inputs that aren't `y` or `n`, and then asks you to try again. 
Keep asking for a response until you receive a valid `y` or `n` 
response. In addition, your program should allow both `Y` and 
`N` (uppercase) responses.

Examples:
$ ruby something2.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something2.rb
>> Do you want me to print something? (y/n)
help
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
Y
something

$ ruby something2.rb
>> Do you want me to print something? (y/n)
N

$ ruby something2.rb
>> Do you want me to print something? (y/n)
NO
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
n
=end

loop do
  puts '>> Do you want me to print something? (y/n)'
  user_input = gets.chomp.downcase

  puts 'something' if user_input == 'y'
  break if user_input == 'y' || user_input == 'n'
  puts '>> Invalid input! Please enter y or n.'
end

=begin
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
y
something
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
help
>> Invalid input! Please enter y or n.
>> Do you want me to print something? (y/n)
y
something
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
N
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
NO
>> Invalid input! Please enter y or n.
>> Do you want me to print something? (y/n)
n
=end
