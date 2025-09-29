=begin
Write a method that takes a sentence string as input, and 
returns the same string with any sequence of the words 'zero', 
'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 
'nine' converted to a string of digits.

Hint: The `String#gsub!` method may prove useful in this 
problem.
=end

## Possible solution:
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 
  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 
  'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# true



## Experiments:
DIGITS = {
  'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 
  'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 
  'eight' => 8, 'nine' => 9
}

def word_to_digit(str)
  array_with_substitutions = str.split.map do |word|
    word = word.split('.').join if word.include?('.')

    if DIGITS.keys.include?(word)
      word.gsub!(/\b#{word}\b/, DIGITS[word].to_s)
    else
      word
    end
  end
  
  array_with_substitutions.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
# "Please call me at 5 5 5 1 2 3 4 Thanks"
