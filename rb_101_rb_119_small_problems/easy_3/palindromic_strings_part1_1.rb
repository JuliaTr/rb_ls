### Further exploration:

=begin

PROBLEM 1:
Write a method that determines whether an array is palindromic; that 
is, the element values appear in the same sequence both forwards and 
backwards in the array.
=end

def palindrome_array?(array)
  array == array.reverse
end

p palindrome_array?([1, 2, 3, 2, 1]) == true                # true          
p palindrome_array?([4, 2, 3, 2, 1]) == false               # true      
p palindrome_array?([1, 2, 3, 4, 5, 3, 2, 1]) == false      # true



=begin

PROBLEM 2:
write a method that determines whether an array or a string is palindromic; 
that is, write a method that can take either an array or a string argument, 
and determines whether that argument is a palindrome. You may not use an 
`if`, `unless`, or `case` statement or modifier.
=end

def palindrome_array_or_string?(input)
  input == input.reverse 
end

p palindrome_array_or_string?([1, 2, 3, 2, 1]) == true              # true
p palindrome_array_or_string?([4, 2, 3, 2, 1]) == false             # true
p palindrome_array_or_string?([1, 2, 3, 4, 5, 3, 2, 1]) == false    # true
p palindrome_array_or_string?('madam') == true                      # true
p palindrome_array_or_string?('Madam') == false                     # true
p palindrome_array_or_string?("madam i'm adam") == false            # true
p palindrome_array_or_string?('356653') == true                     # true

