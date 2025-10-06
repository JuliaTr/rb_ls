# ## Further exploration:
# # Replace uppercase and capitalized words:
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
#   'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
#   'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

# def modify_words(words)
#   # Replace words to digits:
#   words = word_to_digit(words)
  
#   # Replace uppercase and capitalized words:
#   words.split.each do |word|
#     if word == word.capitalize
#       words.gsub!(word, word.downcase)
#     elsif word == word.downcase
#       words.gsub!(word, word.upcase)
#     else
#       word
#     end
#   end
#   words
# end

# p modify_words('Please call me at five five five one two three four. Thanks.') == "please CALL ME AT 5 5 5 1 2 3 4. thanks."
# # true



# =begin
# Can you change your solution so that the spaces between 
# consecutive numbers are removed? Suppose the string already 
# contains two or more space separated numbers (not words); 
# can you leave those spaces alone, while removing any spaces 
# between numbers that you create?

# __________________________________________________________

# ["t", " ", "5"]
# [" ", "5", " "]
# ["5", " ", "5"]
# [" ", "5", " "]
# ["5", " ", "5"]
# [" ", "5", " "]
# ["5", " ", "1"]
# [" ", "1", " "]
# ["1", " ", "2"]
# [" ", "2", " "]
# ["2", " ", "3"]
# [" ", "3", " "]
# ["3", " ", "4"]
# [" ", "4", "."]
# ["4", ".", " "]


# [" ", "5"]
# ["5", " "]
# [" ", "5"]
# ["5", " "]
# [" ", "5"]
# ["5", " "]
# [" ", "1"]
# ["1", " "]
# [" ", "2"]
# ["2", " "]
# [" ", "3"]
# ["3", " "]
# [" ", "4"]
# ["4", "."]

# =end

# ## Improved solution:
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
#   'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
#   'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

# def modify_words(words)
#   words = word_to_digit(words)  # string
#   new_str = ''

#   # Iterate over a string directly:
#   # Simplified condition check
#   words.each_char.with_index do |char, index|
#     unless char == ' ' &&
#             words[index - 1].to_i.to_s == words[index - 1] &&
#             words[index + 1].to_i.to_s == words[index + 1]
#       new_str << char
#     end
#   end

#   new_str
# end

# p modify_words('Please call me at five five five one two three four. Thanks.') == "Please call me at 5551234. Thanks."
# # true



# # Solution:
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
#   'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 
#   'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

# def modify_words(words)
#   words = word_to_digit(words) # string
#   arr_chars = words.chars   # array of chars
#   new_str = ''

#   (0..arr_chars.length - 1).each do |indice|
#     unless arr_chars[indice] == ' ' &&
#             arr_chars[indice - 1].to_i.to_s == arr_chars[indice - 1] &&
#             arr_chars[indice + 1].to_i.to_s == arr_chars[indice + 1]
#       new_str << arr_chars[indice]
#     end
#   end

#   new_str
# end

# p modify_words('Please call me at five five five one two three four. Thanks.') == "Please call me at 5551234. Thanks."
# # true



=begin
Assume that any 10 digit number is a phone number, and that the 
proper format should be `"(123) 456-7890"`.
=end

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
  'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit!(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end

  words
end

def delete_spaces_between_integers!(words)
  new_str = ''

  words.each_char.with_index do |char, index|
    unless char == ' ' &&
            words[index - 1].to_i.to_s == words[index - 1] &&
            words[index + 1].to_i.to_s == words[index + 1]
      new_str << char
    end
  end

  new_str
end

def modify_words(str)
  words = word_to_digit!(str)  # string
  str_without_spaces = delete_spaces_between_integers!(words) # string

  # Build a new string with '(', ')', '-'
  new_str = ''
  str_without_spaces.each_char.with_index do |char, index|
    if char == ' ' &&
        str_without_spaces[index + 1].to_i.to_s == str_without_spaces[index + 1]
      new_str << char + '('
    elsif str_without_spaces[index - 5..index].to_i.to_s == str_without_spaces[index - 5..index] &&
          str_without_spaces[index..index + 4].to_i.to_s == str_without_spaces[index..index + 4]
      new_str << char + '-'
    elsif new_str.include?(')')
      new_str << char
    elsif str_without_spaces[index - 1].to_i.to_s == str_without_spaces[index - 1] &&
          str_without_spaces[index - 2].to_i.to_s == str_without_spaces[index - 2]
      new_str << char + ')' + ' '
    else
      new_str << char
    end
  end

  new_str


end

p modify_words('Please call me at five five five one two three four seven eight one. Thanks.') #== "Please call me at (555) 123-4781. Thanks."
# true



# ## Experiments:
# p ' '.to_i # 0
# p ' '.to_i.to_s  # "0"
