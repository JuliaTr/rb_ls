=begin
Can you change your solution so that the spaces between 
consecutive numbers are removed?

__________________________________________________________

["t", " ", "5"]
[" ", "5", " "]
["5", " ", "5"]
[" ", "5", " "]
["5", " ", "5"]
[" ", "5", " "]
["5", " ", "1"]
[" ", "1", " "]
["1", " ", "2"]
[" ", "2", " "]
["2", " ", "3"]
[" ", "3", " "]
["3", " ", "4"]
[" ", "4", "."]
["4", ".", " "]


[" ", "5"]
["5", " "]
[" ", "5"]
["5", " "]
[" ", "5"]
["5", " "]
[" ", "1"]
["1", " "]
[" ", "2"]
["2", " "]
[" ", "3"]
["3", " "]
[" ", "4"]
["4", "."]

=end

## Improved solution:
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
  'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

def modify_words(words)
  words = word_to_digit(words)  # string
  new_str = ''

  # Iterate over a string directly:
  # Simplified condition check
  words.each_char.with_index do |char, index|
    unless char == ' ' &&
            words[index - 1].to_i.to_s == words[index - 1] &&
            words[index + 1].to_i.to_s == words[index + 1]
      new_str << char
    end
  end

  new_str
end

p modify_words('Please call me at five five five one two three four. Thanks.') == "Please call me at 5551234. Thanks."
# true



# Solution:
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 
  'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

def modify_words(words)
  words = word_to_digit(words) # string
  arr_chars = words.chars   # array of chars
  new_str = ''

  (0..arr_chars.length - 1).each do |indice|
    unless arr_chars[indice] == ' ' &&
            arr_chars[indice - 1].to_i.to_s == arr_chars[indice - 1] &&
            arr_chars[indice + 1].to_i.to_s == arr_chars[indice + 1]
      new_str << arr_chars[indice]
    end
  end

  new_str
end

p modify_words('Please call me at five five five one two three four. Thanks.') == "Please call me at 5551234. Thanks."
# true



=begin
Suppose the string already 
contains two or more space separated numbers (not words); 
can you leave those spaces alone, while removing any spaces 
between numbers that you create?
=end
