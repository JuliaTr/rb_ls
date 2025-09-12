=begin
Write a method that takes a String of digits, and returns the 
appropriate number as an integer. The String may have a 
leading `+` or `-` sign; if the first character is a `+`, your 
method should return a positive number; if it is a `-`, your 
method should return a negative number. If no sign is given, 
you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods 
available in Ruby, such as `String#to_i`, `Integer()`, etc. 
You may, however, use the `string_to_integer` method from the 
previous lesson.
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '-' => 'minus', '+' => 'plus'
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(str)
  new_str = str.clone
  includes_minus = new_str.include?('-')
  includes_plus = new_str.include?('+')

  if includes_minus
    new_str.delete! '-'
  elsif includes_plus
    new_str.delete! '+'
  end

  number = string_to_integer(new_str)
  number = -1 * number if includes_minus
  number
end

p string_to_signed_integer('4321') == 4321   # true
p string_to_signed_integer('-570') == -570   # true
p string_to_signed_integer('+100') == 100    # true



## Possible solution:
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321   # true
p string_to_signed_integer('-570') == -570   # true
p string_to_signed_integer('+100') == 100    # true



## Further exploration:
# Refactor the solution so it only makes `string[1..-1]` and 
# `string_to_integer` calls once each.
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  includes_minus = string.include?('-')
  includes_plus = string.include?('+')

  string = includes_minus || includes_plus ? string[1..-1] : string
  result = string_to_integer(string)

  includes_minus ? -result : result
end

p string_to_signed_integer('4321') == 4321   # true
p string_to_signed_integer('-570') == -570   # true
p string_to_signed_integer('+100') == 100    # true
