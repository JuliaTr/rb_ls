=begin
PROBLEM
Given a non-empty string check if it can be constructed by taking
a substring of it and appending multiple copies of the substring 
together. You may assume the given string consists of lowercase 
English letters only.

Example 1:
Input: 'abab'
Output: True
Explanation: It's a substring 'ab' twice.

Example 2:
Input: 'aba'
Output: False

p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true

How many substrings?
'abab' - ab, ab
'abaababaab' - abaab, abaab
'abcabcabc' - abc, abc, abc, abc

The number of total repeated substring is the same as the length
of a pattern substring.

argument - string
return true or false (depending on if it satisfies the criteria)
  rule - the entire string is a repeating substring

Clarifying question: Is 'aaaaa' considered to be consisted of
                     a repeating substring 'a'? - yes

Initial thought: 
- create a substring
- multiply it until its length is greater than the size of the 
  string

Each string has a limited amount of substrings. It's equal or 
divisible by the amount of substrings.

Another thought:
- divide a string into parts and see if those parts are equal
  to each other

Option 1:
- create an array of substrings that are in length the factors 
  of the string (up to half the length of the string)
- for each substring multiply it by the length of the string
  divided by the length of the substring
- check if that substring multiplication is equal to the string
  return `true` or `false`

We have a length of 4. We go from 1 upto half of 4, which is 2.
Check if that number is a multiple of the length of the string.
If it is, create a substring starting from 0 upto that length.

`a` 
1 is a multiple of 4
2 is a multiple of 4

`a` and `ab` we'll test if double length of `abab` is 4. Double 
length is 1. 
Multiply `a` by 4. See if it equals a substring.
4 divided by the length of `adab` is 2. `ab` times 2 is our string.
That will return true.
=end

# Step 4 (helper method):
def substrings(string)
  substrings = []
  1.upto(string.size / 2) do |substring_length|
    if string.size % substring_length == 0
      substrings << string[0, substring_length]
    end
  end

  substrings
end

def repeated_substring_pattern(string)
  substrings = substrings(string)

  substrings.each do |substring|
    multiplier = string.size / substring.size
    return true if substring * multiplier == string
  end

  false
end

p repeated_substring_pattern('abab') == true         # true
p repeated_substring_pattern('aba') == false         # true
p repeated_substring_pattern('aabaaba') == false     # true
p repeated_substring_pattern('abaababaab') == true   # true
p repeated_substring_pattern('abcabcabc') == true    # true



# Step 3:
# (A) - create an array of substrings that are in length the factors 
# of the string (up to half the length of the string)
def repeated_substring_pattern(string)
  substrings = []
  # We go from 1 upto...
  1.upto(string.size / 2) do |substring_length|
    # If the current number that I'm working with is the length
    # that could be a potential substring 
    if string.size % substring_length == 0
      substrings << string[0, substring_length]  # `num` is the length of the number
    end
  end

  # (A) - for each substring multiply it by the length of the string
  # divided by the length of the substring
  # - check if that substring multiplication is equal to the string
  # return `true` or `false`
  substrings.each do |substring|
    multiplier = string.size / substring.size
    return true if substring * multiplier == string
  end

  # if we don't return true, then we return false
  false
end

p repeated_substring_pattern('abab') == true         # true
p repeated_substring_pattern('aba') == false         # true
p repeated_substring_pattern('aabaaba') == false     # true
p repeated_substring_pattern('abaababaab') == true   # true
p repeated_substring_pattern('abcabcabc') == true    # true



# Step 2:
# (A) create an array of substrings that are in length the factors 
# of the string (up to half the length of the string)
def repeated_substring_pattern(string)
  substrings = []
  # We go from 1 upto...
  1.upto(string.size / 2) do |substring_length|
    # If the current number that I'm working with is the length
    # that could be a potential substring 
    if string.size % substring_length == 0
      substrings << string[0, substring_length]
    end
  end

  p substrings
end

p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false

=begin
["a", "ab"]
false
["a"]
false
=end



# Step 1:
(A) create an array of substrings that are in length the factors 
of the string (up to half the length of the string)
def repeated_substring_pattern(string)
  1.upto(string.size / 2) do |substring_length|
    puts substring_length
  end

end

p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false

=begin
1
2
false
1
false
=end
