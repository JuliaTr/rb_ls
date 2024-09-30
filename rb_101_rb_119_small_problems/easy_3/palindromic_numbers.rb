=begin

PROBLEM
Write a method that returns true if its integer argument is palindromic, 
false otherwise. A palindromic number reads the same forwards and backwards.

TEST CASES
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

___________________________________________________________________________

PEDAC

Problem:
  - Input: An Integer object.
  - Output: A Bolean object.

  - Rules:
    - Explicit: 
      - A method should return true if its integer argument is palindromic, 
        false otherwise.
      - A palindromic number reads the same forwards and backwards.
    - Implicit:
      - INPUT is a positive integer, not a float.

Examples and Test Cases:
  - All test cases conform to the rules.

Data Structure:
  - The work will be done with integers.

Algorithm:
  - Define a method called `palindromic_number?` which takes a parameter
    `number`.
  - If an INPUT is the only digit, return `true`.
  - If an INPUT is more than one digit:
    - check if the first digit is the same as the last one.
      - if no, return `false`
      - if yes:
        - check if all next digits counted from the beggining 
          and from the end of the integer are the same.
        - return `true`
=end

def palindromic_number?(number)
  number_to_str = number.to_s
  number_to_str == number_to_str.reverse
end

p palindromic_number?(34543) == true      # true
p palindromic_number?(123210) == false    # true
p palindromic_number?(22) == true         # true
p palindromic_number?(5) == true          # true



## Further exploration:
=begin
Suppose your number begins with one or more 0s. Will your method still 
work? Why or why not? Is there any way to address this?
=end

def palindrome?(input)
  input == input.reverse 
end

def palindromic_number_with_zero?(number)
  p number   # to check the return value of a local to the method variable.
  palindrome?(number.to_s)
end

p palindromic_number_with_zero?(01) == false            # false
# p number # => 1
# On line 72, `p number` returns a decimal number `1` ignoring leading
# zeros.

p palindromic_number_with_zero?(002) == false           # false
# p number # => 2
# On line 72, `p number` returns a decimal number `2` ignoring leading
# zeros.

p palindromic_number_with_zero?(030) == true            # false
# p number # => 24
# On line 72, `p number` returns an octal notation `24` of the integer
# as an argument passed to the `palindromic_number_with_zero?` method
# invocation.

p palindromic_number_with_zero?(0300) == false            # true
# p number # => 192
# On line 72, `p number` returns an octal notation `192` of the integer
# as an argument passed to the `palindromic_number_with_zero?` method
# invocation.

p palindromic_number_with_zero?(0123210) == true         # false
# p number # => 42576
# On line 72, `p number` returns an octal notation `42576` 
# of the integer as an argument passed to the `palindromic_number_with_zero?`
# method invocation.

p palindromic_number_with_zero?(000456654000) == true    # false
# p number # => 79386624
# On line 72, `p number` returns an octal notation `79386624`
# of the integer as an argument passed to the `palindromic_number_with_zero?`
# method invocation.

=begin
The `palindromic_number_with_zero?` doesn't work with integers, which 
start and end on `0`. This is because Ruby evaluates integers which start 
with leading zeros as a decimal number; integers which start and end on 
zeros as an octal notation. So, when invoking the `palindrome?` method and 
passing `number` to the method as an argument inside `palindromic_number_with_zero?`, 
the value of the `number` has changed on line 72. Now `number` points to a different
integer object (decimal or octal notation of the original object), than it was passed to the `palindromic_number_with_zero?.
=end

## To address an issue with a number, wich begins with one or more 0s.
def palindromic_number_with_zero?(str)
  str == str.reverse
end

p palindromic_number_with_zero?('01') == false            # true
p palindromic_number_with_zero?('002') == false           # true
p palindromic_number_with_zero?('030') == true            # true
p palindromic_number_with_zero?('0300') == false          # true
p palindromic_number_with_zero?('0123210') == true        # true
p palindromic_number_with_zero?('000456654000') == true   # true
