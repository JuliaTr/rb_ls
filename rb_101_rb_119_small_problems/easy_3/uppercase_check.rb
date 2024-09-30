=begin

PROBLEM
Write a method that takes a string argument, and returns `true` if 
all of the alphabetic characters inside the string are uppercase, 
`false` otherwise. Characters that are not alphabetic should be 
ignored.

TEST CASES
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

__________________________________________________________________

PEDAC

Problem:
  - Input: A String object.
  - Output: A Boolean object.

  - Rules:
    - Explicit:
      - A method should take a string argument.
      - A method should return `true` if all of the alphabetic 
        characters inside the string are uppercase, `false` otherwise.
      - Characters that are not alphabettic should be ignored.

    - Implicit:
      - The string should consist of the English letters.
      - An empty string is considered as the one which has 
        all characters uppercased.

Examples and Test Cases:
  - All test cases conform to the rules.

Data Structure:
  - The work will be done on strings.

Algorithm:
  - Define a method called `uppercase?` which takes one parameter `str`
  - If 'str' if the same as an uppercased string, then return 'true'.
  - If not, return `false`

=end

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false               # true
p uppercase?('T') == true                # true
p uppercase?('Four Score') == false      # true
p uppercase?('FOUR SCORE') == true       # true
p uppercase?('4SCORE!') == true          # true
p uppercase?('') == true                 # true


## Further exploration:
# If the argument is an empty string, it would make sense to return 
# `false` and cosider it as an invalid input. An empty string may lead
# to an unpredictable program behaviour. 
