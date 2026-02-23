=begin
Given a string of words separated by spaces, write a method 
that takes this string of words and returns a string in which 
the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but 
words and spaces.
=end

## Refactored
def swap(str)
  swapped = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end

  swapped.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
# All test cases return `true`.



## Solution
def swap(str)
  arr = str.split

  swapped = arr.map do |word|
    word[0], word[-1] = word[-1], word[0] if word.size > 1
    word
  end

  swapped.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
# All test cases return `true`.



## Experiments
def swap(str)
  str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
  end
end

p swap('Oh what a wonderful day it is')
# [["h", "O"], ["t", "w"], ["a", "a"], ["l", "w"], ["y", "d"], ["t", "i"], ["s", "i"]]
