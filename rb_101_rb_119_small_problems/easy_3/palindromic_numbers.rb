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
