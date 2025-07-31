=begin
Write a method that takes a positive integer as an argument and 
returns that number with its digits reversed.

Test cases:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

____________________________________________________________

PEDAC

Input: integer
Output: reversed integer

Reqs/rules:
- if the reversed integer has leading 0s they're eliminated
- in integer has a single digit, it is returned

Algorithm:
- Define `reversed_number` method which takes an integer as an argument
- Reverse integer
  - Comvert integer into string to invoke `reverse` method
- Convert value back to integer to return
=end

## Solution with method chaining:
def reversed_number(number)
  number.to_s.reverse.to_i
end

p reversed_number(12345) == 54321   # true
p reversed_number(12213) == 31221   # true
p reversed_number(456) == 654       # true
p reversed_number(12000) == 21      # true
p reversed_number(12003) == 30021   # true
p reversed_number(1) == 1           # true



## Solution with logical steps:
def reversed_number(number)
  number_to_string = number.to_s
  reversed_str = number_to_string.reverse
  reversed_str.to_i
end

p reversed_number(12345) == 54321   # true
p reversed_number(12213) == 31221   # true
p reversed_number(456) == 654       # true
p reversed_number(12000) == 21      # true
p reversed_number(12003) == 30021   # true
p reversed_number(1) == 1           # true



# With steps browken down:
def reversed_number(number)
  number_to_string = number.to_s
  p number_to_string

  reversed_str = number_to_string.reverse
  p reversed_str

  reversed_str.to_i
end

p reversed_number(12345)
=begin
"12345"                                                  
"54321"                                                  
54321                                                    
=end
