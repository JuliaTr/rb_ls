=begin
Find the longest substring in alphabetical order. 
Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
The input will only consist of lowercase characters and will be at least one letter long. 

If there are multiple solutions, return the one that appears first. 



Find the longest substring in alphabetical order. 

P
Return the longest substring.

Rules:
- substring should be in alphabetical order.
- the longest substring isn't the same as input
- consecutive
- if 1-char string input -> return it

"as|df|aaaabbbbctt|avv|fffff|df"
      "aaaabbbbctt"

'abcde|ap|bcdef'
'abcde'

'as|df|by|fgikl|ag'
         'fgikl'

'z|y|b|a'
'z'

D
Input: string
Output: longest substring
Intermediate:
- arrays: to store substrings
- hashes: to store key (substring), value (length)
- strings: substrings
- integer: iteration
- integer: ASCII value
- integer: count
- range: iteration

High-level:
Idea1:
- Generate all subsequent substrings
- Find the longest (hash)

'abcde|ap|bcdef' (0.upto ...
  ^
  'abcde|ap|bcdef' (first.upto ...)
    ^
str[first..second]

"a", "ab", "abc", "abcde", ...
"b", "bc", "bcd", "bcde" ....


ASCII value

- Find what is the greatest sum of ASCII values 
"abcde" - 97 + 98 + 99 + 100

- Find the difference between ASCII values in string
"as|df|aaaabbbbctt|avv|fffff|df"

97 115 100

- If the next ASCII value is greater, include it in slice
- If the next ASCII value is lower, don't include


- Create empty array `substrings`
- Create `temp` string to put there substring
- Iterate over each character with index (to see the next one)
  - If the next ASCII value is greater
    - Push it to `temp`
  - If the next ASCII value is lower
    - Push `temp` to `substrings`
    - Reassign `temp` to ''
- Return substrings

=end

## Refactored:
def substrings(str)
  substrings = []
  temp = ''

  str.each_char.with_index do |char, index|
    if !str[index + 1].nil? && str[index + 1].ord >= char.ord
      temp << char
    else
      temp << char
      substrings << temp
      temp = ''
    end
  end

  substrings
end

def longest(str)
  substrings = substrings(str)
  substrings.sort_by { |substring| -substring.size}[0]
end

p longest('asd') == 'as' 
p longest('nab') == 'ab' 
p longest('abcdeapbcdef') == 'abcde' 
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt' 
p longest('asdfbyfgiklag') =='fgikl' 
p longest('z') == 'z' 
p longest('zyba') == 'z'
# All test cases return `true`.



## Solution
def substrings(str)
  substrings = []
  temp = ''

  str.each_char.with_index do |char, index|
    if !str[index + 1].nil? && str[index + 1].ord >= char.ord
      temp << char
    else
      temp << char
      substrings << temp
      temp = ''
    end
  end

  substrings
end

def return_hash_substring_length(substrings)
  hash = {}

  substrings.each do |substring|
    hash[substring] = substring.size
  end

  hash
end

def longest(str)
  substrings = substrings(str)
  hash = return_hash_substring_length(substrings)
  max_length = hash.values.max
  substrings.select { |substring| substring.size == max_length }[0]
end

p longest('asd') == 'as' 
p longest('nab') == 'ab' 
p longest('abcdeapbcdef') == 'abcde' 
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt' 
p longest('asdfbyfgiklag') =='fgikl' 
p longest('z') == 'z' 
p longest('zyba') == 'z'
# All test cases return `true`.



### Experiments:
def substrings(str)
  substrings = []
  temp = ''

  0.upto(str.size - 1) do |index|
    char = str[index]
    if !str[index + 1].nil? && str[index + 1].ord >= char.ord
      temp << char
    else
      temp << char
      substrings << temp
      temp = ''
    end
  end

  substrings
end

p substrings('asd')  # ["as", "d"]
p substrings('nab')  # ["n", "ab"]
p substrings('abcdeapbcdef')  # ["abcde", "ap", "bcdef"]
p substrings('asdfaaaabbbbcttavvfffffdf')
# ["as", "df", "aaaabbbbctt", "avv", "fffff", "df"]
p substrings('asdfbyfgiklag') # ["as", "df", "by", "fgikl", "ag"]
p substrings('z')    # ["z"]
p substrings('zyba') # ["z", "y", "b", "a"]
