=begin
Write another method that returns true if the string passed 
as an argument is a palindrome, false otherwise. This time, 
however, your method should be case-insensitive, and it 
should ignore all non-alphanumeric characters.

# Test cases:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
=end

def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(param)
  str = param.downcase.delete('^a-z0-9')
  palindrome?(str)
end

p real_palindrome?('madam') == true              # true
p real_palindrome?('Madam') == true              # true
p real_palindrome?("Madam, I'm Adam") == true    # true
p real_palindrome?('356653') == true             # true
p real_palindrome?('356a653') == true            # true
p real_palindrome?('123ab321') == false          # true



# Experiments:
# p 'hello, hello'.casecmp?('hello hello')   # false

str = 'hello, hello'
p str.delete('^a-z0-9')   # "hellohello"
p str                     # "hello, hello"
