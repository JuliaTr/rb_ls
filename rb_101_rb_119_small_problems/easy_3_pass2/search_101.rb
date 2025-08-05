=begin
Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 
6th number appears amongst the first 5 numbers.

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

_______________________________________________________

PEDAC

Rules:
- In the message "Enter the 1st number:" only the info about
  the number is changing.
- All input numbers should be stored in an array.

Algorithm:
- Intitialize a variable `first_5_numbers` referencing an empty array
- Intitialize a variable `numbers` referencing an array `[1, 2, 3, 4, 5]`
- Create a loop (6 times):
  - Change the number in the message for every iteration
  - Output message
  - Get user input
- Push only first 5 user input to `array`
- Check if `first_5_numbers` include the 6th number
- Output final message
=end

## Solution:
all_numbers = []
sequence = ['1st', '2nd', '3rd', '4th', '5th', 'last']

6.times do |counter|
  puts "==> Enter the #{sequence[counter]} number:"
  number = gets.chomp.to_i

  all_numbers << number
end

last_number = all_numbers.pop

if all_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{all_numbers}."
else
  puts "The number #{last_number} does not appear in #{all_numbers}."
end

=begin
$ ruby search_101.rb
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

$ ruby search_101.rb
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
=end
