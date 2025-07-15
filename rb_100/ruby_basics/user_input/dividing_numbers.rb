=begin
Write a program that asks the user to enter two integers, 
then prints the results of dividing the first by the second. 
The second number must not be 0. Since this is user input, 
there's a good chance that the user won't enter a valid 
integer. Therefore, you must validate the input to be sure it 
is an integer. 

Examples:

$ ruby division.rb
>> Please enter the numerator:
8
>> Please enter the denominator:
2
>> 8 / 2 is 4

$ ruby division.rb
>> Please enter the numerator:
8.3
>> Invalid input. Only integers are allowed.
>> Please enter the numerator:
9
>> Please enter the denominator:
4
>> 9 / 4 is 2


$ ruby division.rb
>> Please enter the numerator:
10
>> Please enter the denominator:
a
>> Invalid input. Only integers are allowed.
>> Please enter the denominator:
0
>> Invalid input. A denominator of 0 is not allowed.
>> Please enter the denominator:
5
>> 10 / 5 is 2
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def get_valid_numerator
  numerator = nil

  loop do
    puts '>> Please enter the numerator:'
    numerator = gets.chomp

    break if valid_number?(numerator)
    puts '>> Invalid input. Only integers are allowed.'
  end

  numerator
end

def get_valid_denominator
  denominator = nil

  loop do
    puts '>> Please enter the denominator:'
    denominator = gets.chomp

    if denominator == '0'
      puts '>> Invavid input. A denominator of 0 is not allowed.'
    else
      break if valid_number?(denominator)
      puts '>> Invalid input. Only integers are allowed.'
    end
  end

  denominator
end

numerator = get_valid_numerator
denominator = get_valid_denominator

result = numerator.to_i / denominator.to_i
puts ">> #{numerator} / #{denominator} is #{result}"

=begin
$ ruby dividing_numbers.rb
>> Please enter the numerator:
8
>> Please enter the denominator:
2
>> 8 / 2 is 4
$ ruby dividing_numbers.rb
>> Please enter the numerator:
8.3
>> Invalid input. Only integers are allowed
>> Please enter the numerator:
9
>> Please enter the denominator:
4
>> 9 / 4 is 2
$ ruby dividing_numbers.rb
>> Please enter the numerator:
10
>> Please enter the denominator:
a
>> Invalid input. Only integers are allowed.
>> Please enter the denominator:
0
>> Invavid input. A denominator of 0 is not allowed.
>> Please enter the denominator:
5
>> 10 / 5 is 2
=end



## Possible solution:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only integers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

=begin
$ ruby dividing_numbers.rb
>> Please enter the numerator:
8
>> Please enter the denominator:
2
8 / 2 is 4
$ ruby dividing_numbers.rb
>> Please enter the numerator:
8.3
>> Invalid input. Only integers are allowed.
>> Please enter the numerator:
9
>> Please enter the denominator:
4
9 / 4 is 2
$ ruby dividing_numbers.rb
>> Please enter the numerator:
10
>> Please enter the denominator:
a
>> Invalid input. Only integers are allowed.
>> Please enter the denominator:
0
>> Invalid input. A denominator of 0 is not allowed.
>> Please enter the denominator:
5
10 / 5 is 2
=end
