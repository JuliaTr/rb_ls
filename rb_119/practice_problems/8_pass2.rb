=begin
Create a method that takes a non-empty string as an argument. 
The string consists entirely of lowercase alphabetic characters. 
The method should return the length of the longest vowel substring. 
The vowels of interest are "a", "e", "i", "o", and "u".

_____________________________________________________

Idea1:
- Generate substrings which consists only with vowels
'beauteous'
["eau", "eou"]

'sequoia'
["e", "uoia"]

- Create a length
- Iterate over each element in substrings
- Reassign length when string length is create than the preliminary
  length
- Return length 


Idea2:
- Generate substrings which consists only with vowels
- Create hash with string (key), its length (value)
- Max by value -> return second element
=end

VOWELS = 'aeiou'

def substrings(str)
  result = []
  temp = ''

  str.each_char.with_index do |char, index|
    if VOWELS.include?(char)
      temp << char
    elsif index != 0 && !VOWELS.include?(char) && !temp.empty?
      result << temp
      temp = ''
    end
  end

  temp.empty? ? result : result << temp
end

def longest_vowel_substring(str)
  substrings = substrings(str)

  return 0 if substrings.empty?
  substrings.sort_by { |val| -val.length }[0].length
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
# All test cases return `true`.



# ## Alternative:
# def longest_vowel_substring(str)
#   lengths = []
#   substring_length = 0
#   temp = ''

#   str.each_char.with_index do |char, index|
#     if 'aeiou'.include?(char)
#       temp << char
#     elsif index != 0 && !'aeiou'.include?(char) && !temp.empty?
#       substring_length = temp.length
#       lengths << substring_length
#       temp = ''
#     end
#   end

#   substring_length = temp.length
#   lengths << substring_length

#   lengths.empty? ? 0 : lengths.max
# end

# p longest_vowel_substring('cwm') == 0
# p longest_vowel_substring('many') == 1
# p longest_vowel_substring('launchschoolstudents') == 2
# p longest_vowel_substring('eau') == 3
# p longest_vowel_substring('beauteous') == 3
# p longest_vowel_substring('sequoia') == 4
# p longest_vowel_substring('miaoued') == 5
# # All test cases return `true`.
