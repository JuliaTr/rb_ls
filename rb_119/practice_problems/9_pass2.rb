=begin
Create a method that takes two string arguments and returns the 
number of times that the second string occurs in the first 
string. Note that overlapping strings don't count: `'babab'` 
contains 1 instance of `'bab'`, **not** 2.

You may assume that the second argument is never an empty string.


______________________________________________

Overlapping:
'babab', 'bab'
'bbbaabbbbaabb', 'bbbaabb'


Idea1:
- Generate substrings without overlapping
'babab'
["b", "ba", "bab", "baba", "babab",

 "a", "ab"]

'babab'
   ^
  'babab'
     ^
["b", "ba", "bab"
  
  "b", "ba", "bab"]

0 upto string size - 1 (`index1`)
  index1 upto string size - 1 (`index2`)
index1 + 1

'babab', 'ba'
["b", "ba", "bab", "baba",
"b", "ba"...]

- Create tally
- Max by value
- Return value



Idea2:
'babab' - 5  'bab' - 3    1
'bbbaabbbbaabb' - 13    'bbbaabb' - 7    1

'babab' - 5  'ba' - 2
'bbbaabbbbaab' - 12     'baab' - 4
'bbbaabbbbaab' - 12     'bbaab' - 5
'bbbaabbbbaabb' - 13    'bbbaabb' - 7

- If string1 include string 2
  - If string1 size is divisible by str2 size is 1
    - return 1
  - Otherwise,
    - Generate substrings
    - Count how many str2, return
- Return 0

=end

def substrings(str)
  result = []

  str.each_char.with_index do |_, index1|
    index1.upto(str.size - 1) do |index2|
      result << str[index1..index2]
    end
  end

  result
end

def count_substrings(str1, str2)
  if str1.include?(str2)
    if str1.size / str2.size == 1
      return 1
    else
      return substrings(str1).count(str2)
    end
  end

  0
end

p count_substrings('babab', 'bab') == 1
p count_substrings('babab', 'ba') == 2
p count_substrings('babab', 'b') == 3
p count_substrings('babab', 'x') == 0
p count_substrings('', 'x') == 0
p count_substrings('bbbaabbbbaab', 'baab') == 2
p count_substrings('bbbaabbbbaab', 'bbaab') == 2
p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1
# All test cases return `true`
