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

p swap("ruby programming") == "yubr grogramminp"  # true



## Possible solution:
def swap_first_last_characters(word)
  # a, b = b, a
  word[0], word[-1] = word[-1], word[0]  # exchanges values
  word
end

def swap(words)
  result = words.split.map do |word|
    p swap_first_last_characters(word)
  end

  p result

  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# All test cases return `true`.

=begin
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
$ ruby letter_swap.rb
"hO"
"thaw"
"a"
"londerfuw"
"yad"
"ti"
"si"
["hO", "thaw", "a", "londerfuw", "yad", "ti", "si"]
"hO thaw a londerfuw yad ti si"
=end



## Further exploration:
def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    p swap_first_last_characters(word[0], word[-1])
  end
  
  p result

  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# All test cases return `false`.

=begin
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# returns `false`

$ ruby letter_swap.rb
["h", "O"]
["t", "w"]
["a", "a"]
["l", "w"]
["y", "d"]
["t", "i"]
["s", "i"]
[["h", "O"], ["t", "w"], ["a", "a"], ["l", "w"], ["y", "d"], ["t", "i"], ["s", "i"]]
"h O t w a a l w y d t i s i"
=end

=begin
*Would this method work? Why or why not?*
This variant doesn't work, because multiple assignment `a, b = b, a`
returns an array of letters swapped. Instead, in the possible
solution we return the same word with swapped letters
=end



## Experiments:
=begin
PEDAC

- new string should be returned
- `"a b c"` are separate words

High-level:
- Take the first character and put on a place of the last one.
- The last character put on a place of the first one.

- Iterate over each word

String -> Array 
Array -> String

Algorithm:
- Convert string into Array of words
- Iterate over Array, in each word:
  - take the first character (initialize local variable)
  - substitute the last character with the first one
  - sudstitute the first character with the last one
- Join elements into string
=end

def swap_first_last(str)
  array = str.split

  result = array.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end

  result.join(' ')
end

p swap_first_last("Launch School") == "hauncL lchooS"
p swap_first_last("ruby programming") == "yubr grogramminp"
p swap_first_last("a b c") == "a b c"
p swap_first_last("") == ""

# All test cases return `true`.
