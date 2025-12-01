# took 45 mins

=begin
String consists of substrings:

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

Examples:
p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true
=end

=begin
P
Return `true` if input string consists of substrings, otherwise `false`

Rules:
- string should be consisted of repeated stirng without extra characters
- substring can repeat any number of times
- The string could be repeated the length should be divisible by 2.

'abab' -> 4 'ab' 2  (1, 2)
'abaababaab' -> 10 'abaab' 2 (1, 2, 5)
'abcabcabcabc' -> 12 'abc' 4 (1, 2, 3, 4, 6)

The string could be repeated the length should be divisible by 2.

'aba' -> 3
'aabaaba' -> 7

D
Input: String
Output: don't print anything
Return: boolean
Side effects: no
Intermediate:
- arrays: array of substrings
- hashes: find occurrences of each substring
- boolean: check is substring repeats
- integer: iteration over indexes
- strings: substrings
- range: iteration over indexes

High-level:
Idea1:
- Generate substrings 
  ["ab", "aba", "abab", 
    "ba", "bab"...
    "ab"]
- Find occurrences of each substring
 {"ab" => 2, "ba" => 1,...}
- Select key which has the greatest value and multiply it by value. If the result is the same as input -> return `true`. 
- Otherwise, `false`

Idea2:
- Generate substrings
- Go over substrings
- Find multiplier for a string length
- Check if substring * multiplier is the same as input

- Generate substrings 
  ["ab", "aba", "abab", 
    "ba", "bab"...
    "ab"]

'abab'
  ^
  'abab'
     ^
str[index1..index2]

["ab", "aba"...
  "ba"]

- Go over substrings
- Find multiplier for a string length
- Check if substring * multiplier is the same as input

- Iterate over each substring
  - string length is divisible by substring length (multiplier)
  - If substrings * multiplier == input
    - return true
  - Otherwise, false
=end

# All substrings:
def substrings(str)
  result = []

  0.upto(str.length - 1) do |index1|
    (index1 + 1).upto(str.length - 1) do |index2|
      result << str[index1..index2]
    end
  end

  result
end

def repeated_substring_pattern(str)
  substrings = substrings(str)
  p substrings

  substrings.each do |substring|
    multiplier = str.length / substring.length
    p multiplier

    return true if multiplier != 1 && (substring * multiplier == str)
  end

  false
end

p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
=begin
["ab", "aba", "ba"]
1
1
1
true
=end

p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true
# All test cases return `true`.



## Learn from others:
def substrings(str)
  substrings = []

  1.upto(str.size / 2) do |substring_length|  # multipliers
    # p substring_length

    if str.size % substring_length == 0
      substrings << str[0, substring_length]
    end
  end

  substrings
end

=begin
1
2
["a", "ab"]

1
["a"]
1
2
3
["a"]

1
2
3
4
5
["a", "ab", "abaab"]

1
2
3
4
["a", "abc"]
=end

def repeated_substring_pattern(str)
  substrings = substrings(str)
  p substrings

  substrings.each do |substring|
    multiplier = str.size / substring.size
    p multiplier

    return true if substring * multiplier == str
  end

  false
end

p repeated_substring_pattern('abab') == true         # true
p repeated_substring_pattern('aba') == false         # true
=begin
["a"]
3
true
=end

p repeated_substring_pattern('aabaaba') == false     # true
p repeated_substring_pattern('abaababaab') == true   # true

# `str.size` is 9, not `12` 
p repeated_substring_pattern('abcabcabc') == true    # true
# All test cases return `true`.
