=begin
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

Some questions I may have:
1. What is a substring?
2. What is a palindrome?
3. Will inputs always be strings?
4. What does it mean to treat palindrome words case-sensitively?

__________________________________________________________________________

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
Algorithm:
 - initialize a `result` variable to an empty array
 - create an array named `substring_arr` that contains all of the
   substrings of the input string that are at least 2 characters long.
 - loop through the words in the `substring_arr` array.
 - if the word is a palindrome, append it to the result
   array
 - return the result array
=end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end


# Experiment:

# for each starting index from 0 through the next to last index position.
  # for each substring length from 2 until there are no substrings of that length.
    # extract the substring of the indicated length starting at the indicated 
    # index position.
  # end of inner loop.
# end of outer loop.

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
