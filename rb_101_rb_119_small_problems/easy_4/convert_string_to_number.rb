=begin
Write a method that takes a String of digits, and returns the 
appropriate number as an integer. You may not use any of the 
methods mentioned above.

For now, do not worry about leading + or - signs, nor should 
you worry about invalid characters; assume all characters will 
be numeric.

You may not use any of the standard conversion methods 
available in Ruby to convert a string to a number, such as 
`String#to_i`, `Integer()`, etc. Your method should do this the 
old-fashioned way and calculate the result by analyzing the 
characters in the string.
=end

## Possible solution:
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('4321') == 4321  # true
p string_to_integer('570') == 570    # true

=begin
10 * 0 + 4 = 0 + 4 = 4
10 * 4 + 3 = 40 + 3 = 43
10 * 43 + 1 = 430 + 1 = 431
=end



## Further exploration
VALUES = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 
  'E' => 14, 'F' => 15
}

MULTIPLIER = 16

def hexadecimal_to_integer(str)
  array = str.chars

  values = array.map do |char| 
             current_value = VALUES[char.upcase]
           end

  power = values.length - 1

  multiplied = values.map do |value|
                 result = value * (MULTIPLIER**power)
                 power -= 1
                 p result
              end
  
  multiplied.sum
end

p hexadecimal_to_integer('4D9f') #== 19871
