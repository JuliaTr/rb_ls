=begin
Exercise (advanced)​: Create a method `select_palindromes` that 
takes an array of strings and returns a new array containing 
only the palindromes from the original array. A palindrome is 
a word that reads the same forward and backward.

p select_palindromes(['madam', 'hello', 'radar', 'world', 'level']) == ['madam', 'radar', 'level']
p select_palindromes(['launch', 'school', 'ruby']) == []
p select_palindromes([]) == []
p select_palindromes(['a', 'aa', 'aaa']) == ['a', 'aa', 'aaa']

Algorithm:
- Define a method `select_palindromes` which takes an array of strings
  as a parameter
- Select strings which are palindromes (use `#reverse`) (Return: array)
=end

def select_palindromes(arr)
  arr.select { |word| word if word == word.reverse }
end

p select_palindromes(['madam', 'hello', 'radar', 'world', 'level']) == ['madam', 'radar', 'level']
p select_palindromes(['launch', 'school', 'ruby']) == []
p select_palindromes([]) == []
p select_palindromes(['a', 'aa', 'aaa']) == ['a', 'aa', 'aaa']
