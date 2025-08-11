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

def palindrome?(str)
  str.reverse == str
end

p palindrome?('madam') == true             # true
p palindrome?('Madam') == false            # true
p palindrome?("madam i'm adam") == false   # true
p palindrome?('356653') == true            # true
