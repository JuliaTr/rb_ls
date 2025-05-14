=begin
Implement a method that takes two arguments:

a sentence string consisting of one or more words
a value which represents a particular case type from either snake case, camel case or upper snake case
The method should return the given string transformed into the appropriate case.

Example:
sentence = 'The sky was blue'
change_case(sentence, :snake) # => 'the_sky_was_blue'
=end

def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end

# `snake(sentence)` method
def snake(str)
  words = str.split
  current_word = 0 # debugged; was `current_word = 1`

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

sentence = 'The sky was blue'
p snake(sentence) == 'the_sky_was_blue'  # true
