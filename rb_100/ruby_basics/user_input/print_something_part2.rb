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
Y
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



### Possible solution:

# To access `choice` outside of the loop when the loop breaks.
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase

  # This break condition make it possible to add more valid 
  # options and keeps the validation logic more concise.
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

=begin
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
y
something
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
help
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
Y
something
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
N
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
NO
>> Invalid input! Please enter y or n
>> Do you want me to print something? (y/n)
n
=end



### Experiments:
# If we extract to the method, the method will do only one job: 
# get user input. Separation of concerns.
def get_user_input
  choice = nil
  loop do
    puts '>> Do you want me to print something? (y/n)'
    choice = gets.chomp.downcase

    break if %w(y n no help).include?(choice)
    puts '>> Invalid input! Please enter y or n'
  end

  choice
end

# We act on user input.
puts 'something' if get_user_input == 'y'

=begin
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
no
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
help
$ ruby print_something_part2.rb
>> Do you want me to print something? (y/n)
Y
something
=end
