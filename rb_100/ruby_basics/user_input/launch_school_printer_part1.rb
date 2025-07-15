=begin
Write a program that prints `'Launch School is the best!'` 
repeatedly until a certain number of lines have been printed. 
The program should obtain the number of lines from the user, 
and should insist that at least 3 lines are printed.

Examples:

$ ruby lsprint.rb
>> How many output lines do you want? Enter a number >= 3:
5
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!

$ ruby lsprint.rb
>> How many output lines do you want? Enter a number >= 3:
2
>> That's not enough lines.
>> How many output lines do you want? Enter a number >= 3:
3
Launch School is the best!
Launch School is the best!
Launch School is the best!
=end

def get_valid_line_count
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? Enter a number >= 3:'
    number_of_lines = gets.chomp.to_i

    break if number_of_lines >= 3
    puts ">> That's not enough lines."
  end

  number_of_lines
end

# Idiomatic Ruby approach
get_valid_line_count.times { puts 'Launch School is the best!' }

=begin
$ ruby launch_school_printer_part1.rb
>> How many output lines do you want? Enter a number >= 3:
5
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
$ ruby launch_school_printer_part1.rb
>> How many output lines do you want? Enter a number >= 3:
2
>> That's not enough lines.
>> How many output lines do you want? Enter a number >= 3:
3
Launch School is the best!
Launch School is the best!
Launch School is the best!
=end



## Possible solution:
number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i

  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end

=begin
$ ruby launch_school_printer_part1.rb
>> How many output lines do you want? Enter a number >= 3:
5
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
Launch School is the best!
$ ruby launch_school_printer_part1.rb
>> How many output lines do you want? Enter a number >= 3:
2
>> That's not enough lines.
>> How many output lines do you want? Enter a number >= 3:
3
Launch School is the best!
Launch School is the best!
Launch School is the best!
=end



### Experiments:
puts '>> How many output lines do you want? Enter a number >= 3:'
number_of_lines = gets
p number_of_lines

converted_to_number = number_of_lines.to_i  # to test conversion
p converted_to_number

=begin
$ ruby launch_school_printer_part1.rb
>> How many output lines do you want? Enter a number >= 3:
5
"5\n"
5
=end
