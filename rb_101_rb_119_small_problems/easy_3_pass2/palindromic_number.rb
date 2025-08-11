=begin
Write a method that returns true if its integer argument is 
palindromic, false otherwise. A palindromic number reads 
the same forwards and backwards.
=end

## Solution:
def palindrome?(param)
  param.reverse == param
end

def palindromic_number?(num)
  param = num.to_s
  palindrome?(param)
end

p palindromic_number?(34543) == true     # true
p palindromic_number?(123210) == false   # true
p palindromic_number?(22) == true        # true
p palindromic_number?(5) == true         # true



## Possible solution:
def palindrome?(param)
  param.reverse == param
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

p palindromic_number?(34543) == true     # true
p palindromic_number?(123210) == false   # true
p palindromic_number?(22) == true        # true
p palindromic_number?(5) == true         # true
