# Complete the solution so that it returns the number of times 
# the search_text is found within the full_text.

=begin
number of times

P
We have 2 input strings. Return how many times second input string appear in first
input string

Rules:
- we don't need to worry about overlapping substrings
- substrings have other characters between
  'aa_bb_cc_dd_bb_e'

D
Input: 2 stirngs
Output: integer
Intemediate:
- arrays: generate substrings including 1-element (all substring with leading elements)
- hash: to count
- integer: count 
- integer: value in hash
- boolean: check if substring is the same as key in hash

High-level:
Idea1:
- Generate substrings
- Iterate over each substring 
- Count how many substrings are there

Idea2:
- Generate substrings
- Build a hash to count
- Check if substring is the same as key in hash


Idea2:
- Generate substrings
'aa_bb_cc_dd_bb_e'  'bb'
             ^
  'aa_bb_cc_dd_bb_e'
        ^
["a", "aa", "aa_"...
....
"b", "bb", ...
....
"b", "bb"..]

0 index upto string length - 1 (`first`)
  `first` index upto string length - 1 (`second`)
    str[fist..second]

- Build a hash to count if str2 == as substring
{"bb" => 2}

- Create empty hash
- Iterate over each substring
  - Count if str2 == substring

#tally

- Check if substring is the same as key in hash  X

=end

def substrings(str)
  result = []
  0.upto(str.size - 1) do |first|
    first.upto(str.size - 1) do |second|
      result << str[first..second]
    end
  end
  result
end

def build_hash(substrings, str2)
  hash = {}
  substrings.each do |substring|
    hash[substring] = substrings.count(substring) if str2 == substring
  end
  hash
end

def solution(str1, str2)
  substrings = substrings(str1)
  build_hash(substrings, str2).values[0]
end

p solution('aa_bb_cc_dd_bb_e', 'bb') == 2 # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') == 1 # should return 1

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
## Works as expected.