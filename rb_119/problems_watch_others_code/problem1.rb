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

How many repeating substrings create a full string?
The repeating substring must appear at least twice to build 
the whole string)
Only:
'abab' (size: 4) - ab, ab        (half of the string)
                                 (multiples: 1, 2)

'abaababaab' (size: 10) - abaab, abaab   (half of the string)
                                         (multiples: 1, 2, 5)

'abcabcabcabc' (size 12) - abc, abc, abc, abc 
                                    (multiples: 1, 2, 3, 4, 6)

We work with the half of the string because if the string 
consists of 2 substrings the repeating substring must appear 
twice to buld the whole string. So, there's no need to find 
`"aba"` in `"abab"`, because `"aba"` doesn't constitute 
`"abab"`.

Note:
If the substrings is longer than half the string, we cannot 
repeat it two or more times to reach the full length.

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
  string and see if it equals it

Each string has a limited amount of substrings. It's equal or 
divisible by the amount of substrings.

Another thought:
- divide a string into parts and see if those parts are equal
  to each other

There's no reson to create an entire array of all substrings, because
we know that only substrings, which are multiples of the length,
we need to work with.

Option 1:
- create an array of substrings that are in length the factors 
  of the string (up to half the length of the string)
- for each substring (from array of substrings) multiply it 
  by the length of the string divided by the length of the 
  substring
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
That will return `true`.
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
  1.upto(string.size / 2) do |substring_length|
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
  # We go from the substring with 1 character upto the middle 
  # of the string.
  1.upto(string.size / 2) do |substring_length|  # factor
    p string
    p substring_length
    p string[0, substring_length]
    # If the current number that I'm working with is the length
    # that could be a potential substring.
    # If the string size can be devided without a remainder, then
    # the `substring_length` is a factor we need. Then we
    # push a substring with this length to an array of substrings.
    if string.size % substring_length == 0
      substrings << string[0, substring_length]
    end
  end

  substrings
end

p repeated_substring_pattern('abab') #== true
p repeated_substring_pattern('aba') #== false

p repeated_substring_pattern('aabaaba') #== false
p repeated_substring_pattern('abaababaab') #== true
p repeated_substring_pattern('abcabcabcabc') #== true

=begin
(repeated_substring_pattern('abab')):
"abab"  (size is 4)
1
"a"     (is pushed, because 4 % 1 == 0 => true)
"abab"
2       (last iteration, because 4 / 2 = 2 to find a half of the string)
"ab"    (is pushed, because 4 % 2 == 0 => true)
["a", "ab"]


(repeated_substring_pattern('aba')):
"aba"   (size is 3)
1       (iteration stops here, because 3 / 2 = 1)
"a"     (is pushed, because 3 % 1 == 0 => true)
["a"]


(repeated_substring_pattern('aabaaba')):
"aabaaba"  (size is 7)
1
"a"        (is pushed, because 7 % 1 == 0 => true)
"aabaaba"
2
"aa"       (NOT pushed, because 7 % 2 == 0 => false)
"aabaaba"
3          
"aab"      (NOT pushed, because 7 % 3 == 0 => false)
["a"]


(repeated_substring_pattern('abaababaab')):
"abaababaab" (size is 10)
1
"a"          (is pushed, because 10 % 1 == 0 => true)
"abaababaab"
2
"ab"         (is pushed, because 10 % 2 == 0 => true)
"abaababaab"
3
"aba"        (NOT pushed, because 10 % 3 == 0 => false)
"abaababaab"
4            (NOT pushed, because 10 % 4 == 0 => false)
"abaa"
"abaababaab"
5            (last iteration, because 10 / 2 = 5, which is the middle)
"abaab"      (is pushed, because 10 % 5 == 0 => true)
["a", "ab", "abaab"]


(repeated_substring_pattern('abcabcabcabc')):
"abcabcabcabc"     (size is 12)
1
"a"               (pushed)
"abcabcabcabc"
2
"ab"              (pushed)
"abcabcabcabc"
3
"abc"             (pushed)
"abcabcabcabc"
4
"abca"            (pushed)
"abcabcabcabc"
5
"abcab"           (NOT pushed)
"abcabcabcabc"
6
"abcabc"          (pushed)
["a", "ab", "abc", "abca", "abcabc"]
=end



# Step 1:
# Find the length of all substrings (all multiples) starting from the substring
# with 1 character upto half of the string.
def repeated_substring_pattern(string)
  1.upto(string.size / 2) do |substring_length| # length of substring is a factor of the string size
    puts substring_length
  end
end

repeated_substring_pattern('abab') #== true
repeated_substring_pattern('aba') #== false

repeated_substring_pattern('aabaaba') #== false
repeated_substring_pattern('abaababaab') #== true
repeated_substring_pattern('abcabcabcabc') #== true

=begin
(repeated_substring_pattern('abab')): (size 4)
1
2

(repeated_substring_pattern('aba')):  (size 3)
1

(repeated_substring_pattern('aabaaba')): (size 7)
1
2
3

(repeated_substring_pattern('abaababaab')): (size 10)
1
2
3
4
5

(repeated_substring_pattern('abcabcabcabc')): (size 12)
1
2
3
4
5
6
=end
