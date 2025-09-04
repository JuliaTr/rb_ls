=begin
Write a method that takes a positive integer or zero, and 
converts it to a string representation.

You may not use any of the standard conversion methods 
available in Ruby, such as Integer#to_s, String(), 
Kernel#format, etc. Your method should do this the 
old-fashioned way and construct the string by analyzing and 
manipulating the number.
=end

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  num.digits.reverse.map { |digit| DIGITS[digit] }.join
end

p integer_to_string(4321) == '4321'    # true
p integer_to_string(0) == '0'          # true
p integer_to_string(5000) == '5000'    # true



## Possible solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''

  loop do
    number, remainder = number.divmod(10)
    p number
    p remainder

    result.prepend(DIGITS[remainder])
    break if number == 0
  end

  result
end

p integer_to_string(4321) == '4321'    # true
# p integer_to_string(0) == '0'          # true
# p integer_to_string(5000) == '5000'    # true

=begin
$ ruby convert_number_to_string.rb
432  (4321 / 10 = 432 (1 is remainder))
1

43
2

4
3

0
4
true
=end
