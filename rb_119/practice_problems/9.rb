=begin
Create a method that takes two string arguments and returns the 
number of times that the second string occurs in the first 
string. Note that overlapping strings don't count: `'babab'` 
contains 1 instance of `'bab'`, **not** 2.

You may assume that the second argument is never an empty string.

P
Return number of times second input string appears in first input string

Rules:
- 1 string empty -> return 0
- 1 string doesn't include 1-element second string -> return 0

D
Input: 2 strings
Output: integer
Intermediate:
- array     
- hash      X
- string    X
- integer
- boolean

High-level:
- Edge case: if 1 string empty, return 0
- Edge case: if 2 string 1 element, check if 1 string include it.
  If yes, count. Return count.
- Determine if 2 string (substring for str1) can be a substring
  for str1

Determine if 2 string (substring for str1) can be a substring
for str1:
Idea: 
- Find all substrings for str1
  'babab', 'bab'
  ["bab", "ab"]

  'babab', 'ba'
  ["ba", "ba"]

  'bbbaabbbbaab', 'baab'
  ["bbba", "abbb"]



  'bbbaabbbbaab', 'baab'
  ["b" "bb", "bbb", "bbba", "bbbaa"...
   "b", "bb", "bba"...
   "b", "ba", "baa", "baab"..]

- Count how many do we have (hash)
- Return value for key equal to str2

'babab'       'bab'
   ^
  'babab'
       ^
["b", "ba", "bab", "baba", "babab"
 ...
 "b", "ba", "bab"...]


Problem: overlapping

'babab', 'bab'
5          3       5 - 2 = 2

'babab', 'ba'
5         2        5 - 2 = 3

'bbbaabbbbaabb', 'bbbaabb'
13                  7      


=end

def count_substrings(str1, str2)
  count = 0
  index = 0

  while index <= str1.size - str2.size
    if str1[index, str2.length] == str2
      count += 1
      index += str2.size - 1
    end
    index += 1
  end

  count
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



## Experiment:
def count_substrings(str1, str2)
  count = 0
  index = 0

  while index <= str1.length - str2.length
    if str1[index, str2.length] == str2
      count += 1
    end
    index += 1
  end

  count
end

# p count_substrings('babab', 'bab') == 1   # false
p count_substrings('babab', 'ba') == 2 #  true
p count_substrings('babab', 'b') == 3  #  true
p count_substrings('babab', 'x') == 0  #  true
p count_substrings('', 'x') == 0       #  true
p count_substrings('bbbaabbbbaab', 'baab') == 2    #  true
p count_substrings('bbbaabbbbaab', 'bbaab') == 2   #  true
# p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1  # false



## Experiment:
# Alternative (all substrings):
# def substrings(str)
#   result = []

#   str.each_char.with_index do |_, index1|
#     index1.upto(str.size - 1) do |index2|
#       result << str[index1..index2]
#     end
#   end

#   result
# end

def substrings(str1, str2)
  result = []

  0.upto(str1.size - 1) do |index|
    result << str1.slice(index, str2.size)
  end

  result
end

def count_substrings(str1, str2)
  return str1.count(str2) if str2.size < 2

  substrings(str1, str2).count(str2)
end

# p count_substrings('babab', 'bab') == 1   # false (overlapping)
p count_substrings('babab', 'ba') == 2 #  true
p count_substrings('babab', 'b') == 3  #  true
p count_substrings('babab', 'x') == 0  #  true
p count_substrings('', 'x') == 0       #  true
p count_substrings('bbbaabbbbaab', 'baab') == 2    #  true
p count_substrings('bbbaabbbbaab', 'bbaab') == 2   #  true
# p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1  # false (overlapping)
