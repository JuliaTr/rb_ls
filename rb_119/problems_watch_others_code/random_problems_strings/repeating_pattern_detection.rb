=begin
In this directory there will be problems on string manipulation,
substring detection, and pattern repetition.
=end

=begin
PROBLEM:
1. Repeating Pattern Detection:
Write a method that takes a string and returns true if the string 
consists of multiple repetitions of a smaller substring, and 
false otherwise. (This is basically the first problem itself but 
try implementing it using different approaches.)

Test cases:
"abab" -> true
Explanation: "ab" repeated twice forms "abab"

"aaaa" -> true
Explanation "a" repeated four times forms "aaaa"

"abcabcabc" -> true
Explanation: "abc" repeated three times forms "abcabcabc"

"aba" -> false
Explanation: There is no smaller substring repeated to form "aba"

"abcd" -> false
Explanaion: The string itself is the only substring, no repeition.

"abcabcab" -> false
Explanation: Partial repetition, but not complete repetition of a substring.

"zzzzzz" -> true
Explanation: "z" repeated six times.

"xyzxyzxyz" -> true
Explanation: "xyz" repeated three times.

"a" -> false
Explanation: Single character string does not count as multiple repetitions.

"" (empty string) -> false or true depending on the design choice 
                                   (usually false since no repetition)

Test cases include substrings, non-repeating strings, partial repeats, 
and edge cases (single-character and empty strings).
__________________________________________________________________________

PEDAC

Problem: return a boolean if a string has a pattern of substrings
Input: string
Output: `true` or `false`
Reqs/rules:
  - There're strings with pattern
  - There're strings without a pattern, and empty string
  - If a string doesn't have at least one pattern (the substring 
    which repeats in full), then it isn' a pattern
  - At least 1 character form a pattern (ex. `'aaa'`, `'zzzzzz'`)
  - The number of patterns in the string is the same as the length 
    of the substring that creates a pattern 
  - Substring pattern that consists of 1 character can has 3 or 6 substrings

Test Cases:
p repeating_pattern_detection('abab') == true
p repeating_pattern_detection('aaa') == true
p repeating_pattern_detection('abcabcabc') == true
p repeating_pattern_detection('aba') == false
p repeating_pattern_detection('abcd') == false
p repeating_pattern_detection('abcabcab') == false
p repeating_pattern_detection('zzzzzz') == true
p repeating_pattern_detection('xyzxyzxyz') == true
p repeating_pattern_detection('a') == false
p repeating_pattern_detection('') == false

'abab' -> ab, ab (2) - 2 characters form a pattern
str.length == 4

'aaa' -> a, a, a (3) - 1 character form a pattern
str.length == 3

'abcabcabc' -> abc, abc, abc (3) - 3 characters form a pattern
str.length == 9

'zzzzzz' -> z, z, z, z, z, z (6) - 1 character form a pattern
str.length == 6

'xyzxyzxyz' -> xyz, xyz, xyz (3) - 3 characters form a pattern
str.length == 9


Data Structure:
strings
boolean (return)

High-level:
- Find a pattern in a string
- If there's a pattern, return `true`
- Otherwisw, false

Intermediate:
- To find: select a substring that meets criteria.
- Criteria: the next character should be either the same or different

- Iterate over possible substring lengths up to half the string length
- For each length, extract the candidate substring.
- Multiply that substring by the number of times it would need to 
  repeat to reach the full tring length.
- Compare to the original string; if equal, return `true`.
- If no substring meets these criteria, return false.

Algorithm:
- Define `repeating_pattern_detection` method with one parameter `str`

To find a substring (helper method (?)):
- Initialize a local variable `substrings` 
- Iterate over a string:
  - If the current character the same as the next one, push it to 
    the substring
  - If the current character is different as the next one, check 
    anoother one until we find a character the same as the first 
    one

(Simplified steps to find a substring):
- Iterate over possible substring length (from 1 up to half the string
  length)
  - Extract those substrings
  - Check if repeating them forms the whole string

When we found a substring:
- Find it's length
- Divide str.length into the length of a substring.
- If its modulo is divisible equally, then return `true` (the string
  has a pattern)
- Otherwisw, return false
=end

def exract_substrings(str)
  substrings = []

  1.upto(str.length / 2) do |substring_length|
    if str.length % substring_length == 0
      substrings << str[0, substring_length]
    end
  end

  substrings
end

def repeating_pattern_detection(str)
  substrings = exract_substrings(str)

  substrings.each do |substring|
    multiplier = str.length / substring.length
    return true if substring * multiplier == str
  end

  false
end

p repeating_pattern_detection('abab') == true        # true
# ["a", "ab"]

p repeating_pattern_detection('aaa') == true         # true
# ["a"]

p repeating_pattern_detection('abcabcabc') == true   # true
# ["a", "abc"]

p repeating_pattern_detection('zzzzzz') == true      # true
# ["z", "zz", "zzz"]

p repeating_pattern_detection('xyzxyzxyz') == true   # true
# ["x", "xyz"]

p repeating_pattern_detection('aba') == false        # true
p repeating_pattern_detection('abcd') == false       # true
p repeating_pattern_detection('abcabcab') == false   # true
p repeating_pattern_detection('a') == false          # true
p repeating_pattern_detection('') == false           # true



# Step 1:
def repeating_pattern_detection(str)
  1.upto(str.length / 2) do |substring_length|
    puts substring_length
  end
end

repeating_pattern_detection('abab') #== true
# 1
# 2

repeating_pattern_detection('aaa') #== true
# 1

repeating_pattern_detection('abcabcabc') #== true
# 1
# 2
# 3
# 4

repeating_pattern_detection('zzzzzz') #== true
# 1
# 2
# 3

repeating_pattern_detection('xyzxyzxyz') #== true
# 1
# 2
# 3
# 4

=begin
The loop goes from `1` up to half the length of the string. If the
string length is `9`. Half of `9` is 4.5. The `str.length / 2` returns
`4` insted of 4.5.

This range in test case above represents the possible substring length
we are testing to see if repeating them forms the full string. We
check substring length from 1 up to half the string length because 
any larger substring couldn't repea enough times to make the entire string.
=end
