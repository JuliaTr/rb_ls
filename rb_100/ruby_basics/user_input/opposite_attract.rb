# require 'pry-byebug'

# =begin
# Write a program that requests two integers from the user, 
# adds them together, and then displays the result. Furthermore, 
# insist that one of the integers be positive, and one negative; 
# however, the order in which the two integers are entered does 
# not matter.

# Do not check for the positive/negative requirement until both 
# integers are entered, and start over if the requirement is not 
# met.

# Examples:

# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 0
# >> Invalid input. Only non-zero integers are allowed.
# >> Please enter a positive or negative integer:
# -5
# 8 + -5 = 3

# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 5
# >> Sorry. One integer must be positive, one must be negative.
# >> Please start over.
# >> Please enter a positive or negative integer:
# -7
# >> Please enter a positive or negative integer:
# 5
# -7 + 5 = -2
# =end

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string &&
#   number_string.to_i != 0
# end

# def get_user_input
#   user_input = nil

#   loop do
#     puts '>> Please enter a positive or negative integer:'
#     user_input = gets.chomp

#     break if valid_number?(user_input)
#     puts '>> Only non-zero integers are allowed.'
#   end

#   user_input
# end

# first_number = nil
# second_number = nil

# loop do
#   first_number = get_user_input
#   second_number = get_user_input

#   if first_number.to_i > 0 && second_number.to_i > 0
#     puts ">> Sorry. One integer must be positive, one must be negative."
#     puts ">> Please start over."
#   elsif first_number.to_i > 0 || second_number.to_i > 0
#     break
#   end
# end

# result = first_number.to_i + second_number.to_i
# puts "#{first_number} + #{second_number} = #{result}"

# =begin
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 0
# >> Only non-zero integers are allowed.
# >> Please enter a positive or negative integer:
# -5
# 8 + -5 = 3

# $ ruby opposite_attract.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 5
# >> Sorry. One integer must be positive, one must be negative.
# >> Please start over.
# >> Please enter a positive or negative integer:
# -7
# >> Please enter a positive or negative integer:
# 5
# -7 + 5 = -2
# =end



## Possible solution:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"

=begin
$ ruby opposite_attract.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
0
>> Invalid input. Only non-zero integers are allowed.
>> Please enter a positive or negative integer:
-5
8 + -5 = 3

$ ruby opposite_attract.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
5
>> Sorry. One integer must be positive, one must be negative.
>> Please start over.
>> Please enter a positive or negative integer:
-7
>> Please enter a positive or negative integer:
5
-7 + 5 = -2
=end
