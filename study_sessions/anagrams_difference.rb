# (recorded) review
# REVIEW

=begin
Given two words, how many letters do you have to remove from them 
to make them anagrams.

_____________________________

How many letters do you have to remove from them 
to make them anagrams?

P
What is the total difference in character counts between the two strings?

Rules:
- order of characters doesn't matter
- characters can be rearranged in an anagram
- we make words anagrams


'codewars'.size
=> 8

irb(main):002:0> 'hackerrank'.size
=> 10

'codewars', 'hackerrank' == 10
8            10

# common characters -> c, e, a, r
                  # -> e, a   a, e

8 + 10 = 18
18 - 10 = 8

In each string, in this example, 4 letters should remain

Remove:
'c|o|d|e|w|a|r|s'
   - -   -    -     
 c     e   a r   

 
'h|a|c|k|e|r|r|a|n|k'
 -     -     - - - -
   a c   e r


Anagrams:
'ab', 'ba'


Idea1: ---
Check if str1 is SAME as reversed str2. If yes,
return 0. 

If no, loop over str1 and remove character
that are not in str2. Count each removed character.

If str1 empty, add str2 size to count. Return count.
Otherwise, loop over str2 and remove character
that are not in str1.
'ab', 'a'
'ab', 'cd'


Idea2: (improved)  V
Create tally for str1 and str2.
eg: 'aab', 'a'
'aab'
{'a'=>2, 'b'=>1}
'a'
{'a'=> 1}

eg: 'codewars', 'hackerrank'
'codewars'
{'c'=>1, 'o'=>1, 'd'=>1, 'e'=>1, 'w'=>1, 'a'=>1, 'r'=>1, 's'=>1}
sorted in alphabetical order:  
{'a'=>1, 'c'=>1, 'd'=>1, 'e'=>1, o'=>1, 'r'=>1, 's'=>1, 'w'=>1}

'hackerrank'
{'h'=>1, 'a'=>2, 'c'=>1, 'k'=>2, 'e'=>1, 'r'=>2, 'n'=>1}
sorted in alphabetical order:
{'a'=>2, 'c'=>1, 'e'=>1, 'h'=>1, 'k'=>2, 'n'=>1, 'r'=>2}


Find the difference for each character
{'a'=>1, 'c'=>1, 'd'=>1, 'e'=>1, o'=>1, 'r'=>1, 's'=>1, 'w'=>1}
deleted: 'd', 'o', 's', 'w'
remained: 'a', 'c', 'e', 'r'

{'a'=>2, 'c'=>1, 'e'=>1, 'h'=>1, 'k'=>2, 'n'=>1, 'r'=>2}
deleted: 'a', 'h', 'k', 'n', 'r'
remained: 'a', 'c', 'e', 'r'

Algo:
- Define a shortest string
- Find unique characters in shortest string
- Create `count` and assign to `0`
- Loop over each character in unique shortest string (`char`)
  - If hash1[char] value SAME as hash2[char] value
    - next
  - else
    - Increment `count` by (hash1[char] - hash2[char]).abs
- Select pairs from hash2, which keys are not included in shortest string
  with unique values.
- Extract values
- Sum up values

Sum the difference
Algo:
- Sum up `count` and rest values



Idea3: ---
Loop over each character from str1. Select characters which are
included in str2.
Loop over each character in str2 from backwards. Select characters
which included in selected characters from str1. Check if current 
character is the same as the last character in the selected 
characters from str1. If any were already
selected from str2, skip them.


Idea4:  V
Loop over each character from str1. Select characters which are
included in str2.
str1 size - selected characters size
+
str2 size - selected characters size

=end

## Simplified logic:
def anagram_difference(str1, str2)
  hash1 = str1.chars.tally
  hash2 = str2.chars.tally

  unique_chars = (str1 + str2).chars.uniq
  count = 0
  unique_chars.each do |char|
    if hash1[char].nil? 
      count += hash2[char]
    elsif hash2[char].nil?
      count += hash1[char]
    else
      count += (hash1[char] - hash2[char]).abs
    end
  end
  count
end

p anagram_difference('banana', 'bandana') == 1

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
# All test cases return `true`.



## Improved logic (Idea2):
def anagram_difference(str1, str2)
  hash1 = str1.chars.tally
  hash2 = str2.chars.tally

  shortest_str = str1.size < str2.size ? str1 : str2

  count = 0
  shortest_str.chars.uniq.each do |char|
    if hash1[char] == hash2[char]
      next
    elsif hash1[char].nil? || hash2[char].nil?
      count += 1
    else
      count += (hash1[char] - hash2[char]).abs
    end
  end

  longest_hash = shortest_str == str1 ? hash2 : hash1

  rest_pairs = longest_hash.reject { |key, val| shortest_str.include?(key) }
  count + rest_pairs.values.sum
end

p anagram_difference('banana', 'bandana') == 1

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
# All test cases return `true`.

  

## Solution (Idea4):
def anagram_difference(str1, str2)
  selected = ''
  str1.chars.each do |char|
    selected << char if str2.include?(char) && !selected.include?(char)
  end

  (str1.size - selected.size) + (str2.size - selected.size)
end

p anagram_difference('banana', 'bandana') == 1  # false

puts(anagram_difference('', '') == 0)
puts(anagram_difference('a', '') == 1)
puts(anagram_difference('', 'a') == 1)
puts(anagram_difference('ab', 'a') == 1)
puts(anagram_difference('ab', 'ba') == 0)
puts(anagram_difference('ab', 'cd') == 4)
puts(anagram_difference('aab', 'a') == 2)
puts(anagram_difference('a', 'aab') == 2)
puts(anagram_difference('codewars', 'hackerrank') == 10)
# All test cases return `true`.
