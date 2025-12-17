# (recorded) review
# REVIEW

=begin
Given two words, how many letters do you have to remove from them 
to make them anagrams.

_____________________________

How many letters do you have to remove from them 
to make them anagrams?

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


Idea2: ---
Create tally for each string.
'ab', 'a'
{'a'=>1, 'b'=>1}
{'a'=> 1}

'ab', 'cd'

Loop over tally1 and reject pairs which have the same
key and value


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


## Solution (Idea4):
def anagram_difference(str1, str2)
  selected = ''
  str1.chars.each do |char|
    selected << char if str2.include?(char) && !selected.include?(char)
  end

  (str1.size - selected.size) + (str2.size - selected.size)
end

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
