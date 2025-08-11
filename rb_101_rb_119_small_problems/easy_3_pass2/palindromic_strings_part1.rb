=begin
Write a method that returns true if the string passed as 
an argument is a palindrome, false otherwise. A palindrome 
reads the same forward and backward. For this exercise, 
case matters as does punctuation and spaces.

Test cases:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
=end

## Solution:
def palindrome?(str)
  str.reverse == str
end

p palindrome?('madam') == true             # true
p palindrome?('Madam') == false            # true
p palindrome?("madam i'm adam") == false   # true
p palindrome?('356653') == true            # true



### Further exploration:
=begin
Write a method that determines whether an array is palindromic; 
that is, the element values appear in the same sequence both 
forwards and backwards in the array.
=end

def palindrome?(arr)
  arr.reverse == arr
end

p palindrome?([1, 2, 1]) == true             # true
p palindrome?([1, 2, 3, 4, 5]) == false      # true
p palindrome?([1, 2, 3, 3, 2, 1]) == true    # true
