## Further exploration:
# Replace uppercase and capitalized words:
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
  # Replace words to digits:
  words = word_to_digit(words)
  
  # Replace uppercase and capitalized words:
  words.split.each do |word|
    if word == word.capitalize
      words.gsub!(word, word.downcase)
    elsif word == word.downcase
      words.gsub!(word, word.upcase)
    else
      word
    end
  end
  words
end

p modify_words('Please call me at five five five one two three four. Thanks.') == "please CALL ME AT 5 5 5 1 2 3 4. thanks."
# true



=begin
Can you change your solution so that the spaces between 
consecutive numbers are removed? Suppose the string already 
contains two or more space separated numbers (not words); 
can you leave those spaces alone, while removing any spaces 
between numbers that you create?

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

  (0..arr_chars.length - 2).each do |indice|  # indice
    if arr_chars[indice].to_i.to_s == arr_chars[indice] &&
        arr_chars[indice + 1] == ' ' &&
        arr_chars[indice + 2].to_i.to_s == arr_chars[indice + 2]
      arr_chars.delete_at(indice + 1)
    end
  end

  arr_chars.join
end

p modify_words('Please call me at five five five one two three four. Thanks.') == "Please call me at 5551234. Thanks."
# true



## Experiments:
p ' '.to_i # 0
p ' '.to_i.to_s  # "0"
