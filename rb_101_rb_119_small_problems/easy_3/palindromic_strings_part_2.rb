=begin

PROBLEM
Write another method that returns true if the string passed as an 
argument is a palindrome, false otherwise. This time, however, your 
method should be case-insensitive, and it should ignore all non-alphanumeric 
characters. If you wish, you may simplify things by calling the 
`palindrome?` method you wrote in the previous exercise.

TEST CASES
real_palindrome?('madam') == true
real_palindrome?('Madam') == true            # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true  # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

____________________________________________________________________________

PEDAC

Problem: 
  - Input: A String object.
  - Output: A Bolean object. 

  - Rules:
    - Explicit:
      - A method should return true if the string passed as an 
        argument is a palindrome, false otherwise.
      - The method should be case-insensitive.
      - The method should ignore all non-alphanumeric characters.
      - A `palindrome?` method from the previous exercise may be called.
    - Implicit:
      - Upper case and down case letters, apostroph, integers are 
        characters of strings in the argument.

Examples and Test Cases:
  - All test cases conform to the rules.

Data Structure:
  - The work will be done with strings.

Algorithm:
  - Define a method called `palindrome?` which takes one parameter `str`.
  - Return a new string of `str` in reverse order.
  - If the returned new string is the same as the original string, return `true`.
  - If not, return `false`.

  - Define a method called `real_palindrome?` which takes one parameter `str`.
  - Convert `str` characters into a down case version.
  - If `str` include `", "` or `"'"`:
    - delete `", "` or `"'"`,
    - call `palindrome?` method with a string without deleted elements 
      as an argument and return the value.
  - If not, call `palindrome?` method with `str` as an argument and 
    return the value.
=end

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  str = str.downcase
  if str.include? ", " || "'"
    str_without_deleted_elements = str.delete ", " "'"
    return palindrome?(str_without_deleted_elements)
  end
  palindrome?(str)
end

p real_palindrome?('madam') == true               # true
p real_palindrome?('Madam') == true               # true
p real_palindrome?("Madam, I'm Adam") == true     # true
p real_palindrome?('356653') == true              # true
p real_palindrome?('356a653') == true             # true
p real_palindrome?('123ab321') == false           # true



## Experiments:
def real_palindrome?(str)
  str = str.downcase
  if str.include? ", " || "'"
    str_without_deleted_elements = str.delete ", " "'"
    return str_without_deleted_elements == str_without_deleted_elements.reverse
  end
  str == str.reverse
end

p real_palindrome?('madam') == true               # true
p real_palindrome?('Madam') == true               # true
p real_palindrome?("Madam, I'm Adam") == true     # true
p real_palindrome?('356653') == true              # true
p real_palindrome?('356a653') == true             # true
p real_palindrome?('123ab321') == false           # true



def real_palindrome?(str)
  str = str.downcase
  str_without_deleted_elements = str.delete ", " "'"
  str_without_deleted_elements == str_without_deleted_elements.reverse
end

p real_palindrome?("Madam, I'm Adam") == true      # true



def real_palindrome?(str)
  str = str.downcase
  str == str.reverse
end

p real_palindrome?('madam') == true               # true
p real_palindrome?('Madam') == true               # true
p real_palindrome?('356653') == true              # true
p real_palindrome?('356a653') == true             # true
p real_palindrome?('123ab321') == false           # true
