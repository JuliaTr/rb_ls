=begin
PROBLEM
Find the length of the longest substring in the given string
that is the same in reverse.

As an example, if the input was "I like rececars that go fast"
the substring (racecar) length would be 7.

If the length of the input string is 0, return value must be 0

Example:
`'a'` -> 1
`'aab'` -> 2
`'abcde'` -> 1
`'zzbaabcd'` -> 4
`''` -> 0

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9

____________________________________________________________

PEDAC

Input: string
Output: integer
Goal: get the length of the largest substring palindrome

Rules:
- If string is empty, return 0
- If no palindromes, return 0

High-level:
- Find all substrings (helper method)
- Iterate over each substring to find all palindromes (helper method)
- Find largest palindrome and return that


Helper: find all substrings
D
Input: string
Output: array of all substrings
Intermediate: range to find all substrings
A
Algorithm:
- Create results array to store all substrings
- Iterate over a range of indexes from 0 to array length - 1
  - Take that element, iterate again with index
    - Take slice of string from index of original element to
      index of second iteration element
    - Add that slice to results
- Return results

Helper: find all palindromes
D
Input: array of all substrings
Output: new array of palindromes
Intermediate: X
A
Algorithm:
- Create results array to store palindromes
- Iterate over each substring
- If a string is equal to the same reversed string
  - Add the substring to results
- Return results 

Algorithm (main method):
- call helper (find all substrings)
- call helper (find all palindromes)
- Iterate over palindrome collection
  - Determine length of each element
  - Return max length
=end

# Step 4 (with Yuliia's versions):
def find_all_substrings(string)
  results = []

  0.upto(string.length - 1) do |start_index|
    start_index.upto(string.length - 1) do |end_index|
      results << string[start_index..end_index]
    end
  end

  results
end

# Yuliia's `palindromes` method version:
def palindromes(substrings)
  substrings.select { |substring| substring == substring.reverse }
end

def longest_palindrome(string)
  # Find all substrings
  substrings = find_all_substrings(string)

  # Find all palindromes.
  palindromes = palindromes(substrings)

  # Find the longest palindrome.
  palindromes.map(&:size).max   #  Yuliia's version
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9
# All test cases print `true`.


# Step 4:
def find_all_substrings(string)
  results = []

  0.upto(string.length - 1) do |start_index|
    start_index.upto(string.length - 1) do |end_index|
      results << string[start_index..end_index]
    end
  end

  results
end

def palindromes(substrings)
  results = []

  substrings.each do |substr|
    results << substr if substr == substr.reverse
  end

  results
end

def longest_palindrome(string)
  # Find all substrings.
  substrings = find_all_substrings(string)

  # Find all palindromes.
  palindromes = palindromes(substrings)

  # Find the longest palindrome.
  max_length = 0
  palindromes.each do |palindrome|
    if palindrome.length > max_length
      max_length = palindrome.length
    end
  end
  max_length
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9
# All test cases print `true`.


# Step 3:
def find_all_substrings(string)
  results = []

  0.upto(string.length - 1) do |start_index|
    start_index.upto(string.length - 1) do |end_index|
      results << string[start_index..end_index]
    end
  end

  results
end

# # Yullia's `palindromes` method version (works as expected):
# def palindromes(substrings)
#   substrings.select { |substring| substring == substring.reverse }
# end

def palindromes(substrings)
  results = []

  substrings.each do |substr|
    results << substr if substr == substr.reverse
  end

  results
end

def longest_palindrome(string)
  # Find all substrings
  substrings = find_all_substrings(string)

  # Find all palindromes
  palindromes(substrings)
end

p longest_palindrome('baabcd')
# ["b", "baab", "a", "aa", "a", "b", "c", "d"]


# Step 2:
# For this step the algorithm for helper (find all substrings)
# was changed.
def find_all_substrings(string)
  results = []

  0.upto(string.length - 1) do |start_index|
    start_index.upto(string.length - 1) do |end_index|
      results << string[start_index..end_index]
    end
  end

  results
end

p find_all_substrings('baabcd')
=begin
["b", "ba", "baa", "baab", "baabc", "baabcd", "a", "aa", 
"aab", "aabc", "aabcd", "a", "ab", "abc", "abcd", "b", "bc", 
"bcd", "c", "cd", "d"]
=end


=begin
Helper: find all substrings
D
Input: string
Output: array of all substrings
Intermediate: 
- range to find all substrings
- array of characters
A
Algorithm:
- Create results array to store all substrings
- Break string into array of characters
- Iterate over a range of indexes from 0 upto array length - 1
- Return results
=end

# Step 1 (Yuliia's version):
# No need to create intermediate array of characters
def find_all_substrings(string)
  results = []

  0.upto(string.length - 1) do |num|
    results << string[0..num]
  end

  results
end

p find_all_substrings('baabcd')
# ["b", "ba", "baa", "baab", "baabc", "baabcd"]


# Step 1
def find_all_substrings(string)
  results = []
  array = string.chars

  0.upto(array.length - 1) do |num|
    results << array[0..num]
  end

  results
end

def longest_palindrome(string)
  # Find all substrings
  substrings = find_all_substrings(string)
end

p longest_palindrome('baabcd')
=begin
[["b"], ["b", "a"], ["b", "a", "a"], ["b", "a", "a", "b"], 
["b", "a", "a", "b", "c"], ["b", "a", "a", "b", "c", "d"]]
=end
