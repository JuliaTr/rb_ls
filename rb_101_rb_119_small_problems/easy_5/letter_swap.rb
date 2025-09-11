=begin
Given a string of words separated by spaces, write a method 
that takes this string of words and returns a string in which 
the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. You 
may also assume that each string contains nothing but words and 
spaces.

______________________________________________________________

PEDAC

High-level:
- Take the first letter and put on place of the last letter.
- Take the last letter and put on a place of the first letter.
=end

def swap(str)
  array_of_swapped_words = str.split(' ').map do |word|
                             chr_last = word[-1]
                             word = word.gsub(word[-1], word[0])
                             word.sub(word[0], chr_last)
                           end

  array_of_swapped_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# All test cases return `true`.



## Possible solution:
def swap_first_last_characters(word)
  # a, b = b, a
  word[0], word[-1] = word[-1], word[0]  # exchanges values
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# All test cases return `true`.
