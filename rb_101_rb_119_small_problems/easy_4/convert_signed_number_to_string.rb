=begin
Write a method that takes an integer, and converts it to a 
string representation.

You may not use any of the standard conversion methods 
available in Ruby, such as `Integer#to_s`, `String()`, 
`Kernel#format`, etc. You may, however, use `integer_to_string` 
from the previous exercise.
=end

## Solution:
# Option 1:
DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  num.digits.reverse.map { |digit| DIGITS[digit] }.join
end

def signed_integer_to_string(num)
  absolute_value = num.abs

  # Further expl.: to reduce this method the call to one - done
  converted_num_to_str = integer_to_string(absolute_value)

  if num == 0
    converted_num_to_str
  elsif num > 0
    converted_num_to_str.prepend('+')
  elsif num < 0
    converted_num_to_str.prepend('-')
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'



# Option 2:
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''

  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end

  result
end

def signed_integer_to_string(num)
  absolute_value = num.abs

  # Further expl.: to reduce this method the call to one - done
  converted_num_to_str = integer_to_string(absolute_value)

  if num == 0
    converted_num_to_str
  elsif num > 0
    converted_num_to_str.prepend('+')
  elsif num < 0
    converted_num_to_str.prepend('-')
  end
end

p signed_integer_to_string(4321) == '+4321'  # true
p signed_integer_to_string(-123) == '-123'   # true
p signed_integer_to_string(0) == '0'         # true



## Possible solution:
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''

  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end

  result
end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'  # true
p signed_integer_to_string(-123) == '-123'   # true
p signed_integer_to_string(0) == '0'         # true

