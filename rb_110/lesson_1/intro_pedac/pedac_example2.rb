=begin

Example 2:

Step 1:
PROBLEM:

Given a string, write a method `palindrome_substrings` which returns
all the substrings from a given string which are palindromes and 2 or more 
characters long.
Consider palindrome words case sensitive.

TEST CASES:
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []

___________________________________________________________________________

Step 2:
Some questions I may have:
1. What is a substring?
2. What is a palindrome?
3. Will inputs always be strings?
4. What does it mean to treat palindrome words case-sensitively?

__________________________________________________________________________

Step 3:
PEDAC

PROBLEM
Input: string
Output: array of substrings
Rules:
     Explicit requirements:
      - return only substrings which are palindromes.
       (Reminder: a palindrome is a word that reads the same forwards and 
       backward).
      - palindromes must be 2 or more characters long. 
      - Palindromes are case sensitive ("abBA" is not a palindrome).

     Implicit requirements:
      - the returned array of substrings.
      - if the string is an empty string, the result should be an empty
         array.
      - if there's no a palindrome substring, return an empty array.
Data Structure: array (comes from desired output)

Step 4:
Algorithm:
- initialize a `result` variable to an empty array
- create an array named `substring_arr` that contains all of the
   substrings of the input string that are at least 2 characters long.
- loop through the words in the `substring_arr` array.
- if the word is a palindrome, append it to the result
   array
- return the result array

Step 8:
Improved algorithm:
- create an empty array called `result` that will contain all required substrings
- create a `starting_index` variable (value `0`) for the starting index of a 
  substring
- start a loop that iterates over `starting_index` from `0` to the length of 
  the string minus 2
  - create a `num_chars` variable (value `2`) for the length of a substring
  - start an inner loop that iterates over `num_chars` from `2` to 
  `string.length - starting_index`
    - extract a substring of length `num_chars` from `string` starting at 
    `starting_index`
    - append the extracted substring to the `result` array
    - increment the `num_chars` variable by `1`
  - end the inner loop
  - increment the `starting_index` variable by `1`
- end the outer loop
- return the `result` array

Step 11:
- Inside the `is_palindrome?` method, check whether the string
  value is equal to its reversed value. You can use the
  `String#reverse` method.


Step 13:
Complete informal pseudocode:
input: a string
output: an array of substrings
rules: palindrome words should be case sensitive, meaning "abBA"
       is not a palindrome

Algorithm:
`substrings` method
=================
  - create an empty array called `result` that will contain all required 
    substrings
  - create a `starting_index` variable (value `0`) for the starting index of 
    a substring
  - start a loop that iterates over `starting_index` from `0` to the length 
    of the string minus 2
    - create a `num_chars` variable (value `2`) for the length of a substring
    - start an inner loop that iterates over `num_chars` from `2` to 
      `string.length - starting_index`
      - extract a substring of length `num_chars` from `string` starting at 
        `starting_index`
      - append the extracted substring to the `result` array
      - increment the `num_chars` variable by `1`
    - end the inner loop
    - increment the `starting_index` variable by `1`
  - end the outer loop
  - return the `result` array

`is_palindrome?` method
 =====================
  - Inside the `is_palindrome?` method, check whether the string
  value is equal to its reversed value. You can use the
  String#reverse method.

`palindrome_substrings` method
============================
  - initialize a result variable to an empty array
  - create an array named substring_arr that contains all of the
   substrings of the input string that are at least 2 characters long.
  - loop through the words in the substring_arr array.
  - if the word is a palindrome, append it to the result
   array
  - return the result array


Step 9:
Formal Pseudo-Code:

START

  /* Given a string named `string` */

  SET result = []
  SET starting_index = 0

  WHILE starting_index <= length of string - 2
    SET num_chars = 2
    WHILE num_chars <= length of string - starting_index
      SET substring = num_chars characters from string starting at index starting_index
      append substring to result array
      SET num_chars = num_chars + 1

    SET starting_index = starting_index + 1

  RETURN result

END
=end

# Step 14:
# Solution:
def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

p palindrome_substrings("supercalifragilisticexpialidocious") # ["ili"]
p palindrome_substrings("abcddcbA")   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") # []
p palindrome_substrings("")           # []


#######################################################################

# Step 5:
def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

# Step 10:
def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= str.lemgth - 2)
    num_chars = 2
    while = str.slice(starting_inde, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

# Step 12:
def is_palindrome?(str)
  return str == str.reverse
end


# Experiments:

# Step 6:
# for each starting index from 0 through the next to last index position.
  # for each substring length from 2 until there are no substrings of that length.
    # extract the substring of the indicated length starting at the indicated 
    # index position.
  # end of inner loop.
# end of outer loop.

# Step 7:
str = 'halo'
counter = 0

loop do
  p str[counter]
  counter += 1
  break if counter >= str.length 
end

# Output:
# "h"
# "a"
# "l"
# "o"


str = 'halo'
counter = 0


loop do
  p str[counter, 2]
  counter += 1
  break if counter >= str.length
end

# Output:
# "ha"
# "al"
# "lo"
# "o"


str = 'halo'
starting_counter = 0
number_of_characters = 2

loop do
  p str[starting_counter, number_of_characters]
  number_of_characters += 1
  break if number_of_characters > str.size
end

# Output:
# "ha"
# "hal"
# "halo"


str = 'halo'
starting_counter = 1
number_of_characters = 2

loop do
  p str[starting_counter, number_of_characters]
  number_of_characters += 1
  break if str[number_of_characters].nil?
end

# Output:
# "al"
# "alo"


str = 'halo'
starting_counter = 2
number_of_characters = 2

loop do
  p str[starting_counter, number_of_characters]
  number_of_characters += 1
  break if str[number_of_characters + 1].nil?
end

# Output:
# "lo"
