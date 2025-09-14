=begin
Write a method that returns the next to last word in the 
String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at 
least two words.
=end

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'              # true
p penultimate('Launch School is great!') == 'is'  # true



## Further exploration:
# Write a method that returns the middle word of a phrase or 
# sentence. It should handle all of the edge cases you thought of.

def middle_word(str)
  arr = str.split

  arr_length = arr.length
  middle_word_index = arr_length / 2

  (arr_length % 2 != 0) ? arr[middle_word_index] : ''
end

p middle_word('this is the last word') == 'the' # true
p middle_word('Launch School is great!') == ''  # true
p middle_word('a') == 'a'                       # true
p middle_word('') == ''                         # true
