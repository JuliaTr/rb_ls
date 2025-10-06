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



## Experiments:
p ' '.to_i # 0
p ' '.to_i.to_s  # "0"
