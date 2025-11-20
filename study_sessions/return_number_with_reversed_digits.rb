=begin
Write a method that takes a positive integer as an argument 
and returns that number with its digits reversed. Don't worry 
about arguments with leading zeros.

Examples:
reversed_number(12213) == 31221
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(1) == 1



PEDAC
P: reverse digits in the integer

Input: Integer
Output: Integer

Req/rules:
- the numbers of digits is the same; exception - no leading zeros in return value (ex. `reversed_number(12000) == 21`)
- if there one integer, it's returned
- can use `reverse` method

Algorithm:
- Define a method `reversed_number`, which takes an integer as an argument.
- If there's only one Integer
  - return Integer
- Reverse Integer:
  - convert integer into a String
  - invoke `#reverse`
=end

def reversed_number(number)
  number_to_string = number.to_s
  reversed_number = number_to_string.reverse
  reversed_number.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
