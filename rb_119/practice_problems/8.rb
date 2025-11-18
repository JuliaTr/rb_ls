=begin
Create a method that takes a non-empty string as an argument. 
The string consists entirely of lowercase alphabetic characters. 
The method should return the length of the longest vowel substring. 
The vowels of interest are "a", "e", "i", "o", and "u".

P
Return length of longest vowel substring

Rules:
- there may be no vowel in substring -> 0
- substring should have consecutive vowels

D
Input: string
Output: integer
Intermediate:
- array: store substrings
- array: vowels
- hash: substring (key), count of vowels (value)
- integer: iterate over indexes
- integer: count how many strings don't have vowels
- range: iterate over indexes
- range: vowels
- boolean: check if substring has a vowel
- string: vowels

High-level:
- Generate consecutive substrings
  'sequoia'
  ["s", "se", "sequoia"...
  "e", "eq", "equ"...
  ...
  "u", "uo", "uoi", "uoia"]
- Hash to count how many consonants strings have
- Select hash with 0 consonants, if no such hash return 0
- Return its length
=end

# CONSONANTS = 'bcdfghjklmnpqrstvwzyz'

# def substrings(str)
#   result = []
#   0.upto(str.size - 1) do |first|
#     first.upto(str.size - 1) do |second|
#       result << str[first..second]
#     end
#   end
#   result
# end

# def generate_count(substrings)
#   hash = Hash.new(0)

#   substrings.each do |substring|
#     p "substring #{substring}"
#     substring.each_char do |char|
#       # p char
#       # p hash[substring]
#       p !CONSONANTS.include?(char)
#       hash[substring] = substring.count(char) if !CONSONANTS.include?(char)
#     end
#   end

#   hash
# end

# def longest_vowel_substring(str)
#   substrings = substrings(str)

#   generate_count(substrings)
# end

# # p longest_vowel_substring('cwm') #== 0
# p longest_vowel_substring('many') #== 1
# # p longest_vowel_substring('launchschoolstudents') == 2
# # p longest_vowel_substring('eau') == 3
# # p longest_vowel_substring('beauteous') == 3
# # p longest_vowel_substring('sequoia') #== 4
# # p longest_vowel_substring('miaoued') == 5


## Alternative 1:
VOWELS = 'aeiou'

def return_vowels_substrings(str)
  arr_substrings = []
  substring = ''

  str.each_char do |char|
    if VOWELS.include?(char)
      substring << char
    else
      arr_substrings << substring
      substring = ''
    end
  end

  arr_substrings << substring
end

def longest_vowel_substring(str)
  substrings_vowels = return_vowels_substrings(str)
  substrings_length = substrings_vowels.empty? ? 0 : substrings_vowels.map(&:length)
  substrings_length.max
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
# # All test cases return `true`.



## Possible solution:
def longest_vowel_substring(str)
  vowels = 'aeiou'
  max_count = 0
  current_count = 0

  str.each_char do |char|
    if vowels.include?(char)
      current_count += 1
      max_count = [max_count, current_count].max
    else
      current_count = 0
    end
  end

  max_count
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
# All test cases return `true`.
