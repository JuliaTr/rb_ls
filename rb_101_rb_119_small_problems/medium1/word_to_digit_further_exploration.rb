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

# # Improved solution:
# # # Iterate over a string directly:
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
#   arr_chars = words.chars

#   # Simplified condition check
#   arr_chars.each_with_index do |char, index|
#     if char.to_i.to_s == char &&           # digit?
#         arr_chars[index + 1] == ' ' &&
#         arr_chars[index + 2].to_i.to_s ==  arr_chars[index + 2]  # digit?
#       arr_chars.slice!(index + 1)
#     end
#   end

#   arr_chars.join
# end

# p modify_words('Please call me at five five five one two three four. Thanks.') == "Please call me at 5551234. Thanks."
# # true



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
    p arr_chars[indice]
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



# =begin
# Assume that any 10 digit number is a phone number, and that the 
# proper format should be `"(123) 456-7890"`.
# =end

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
#   'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
#   'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit!(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end

#   words
# end

# # (See how to rewrite to build a new string with less characters 
# # (in order not to modify the number characters)

# def delete_spaces_between_integers!(words)
#   arr_chars = words.chars

#   arr_chars.each_with_index do |char, index|
#     if char.to_i.to_s == char &&           # digit?
#         arr_chars[index + 1] == ' ' &&
#         arr_chars[index + 2].to_i.to_s == arr_chars[index + 2]  # digit?
#       arr_chars.slice!(index + 1)
#     end
#   end

#   arr_chars
# end

# def modify_words(str)
#   words = word_to_digit!(str)  # string
#   arr_chars = delete_spaces_between_integers!(words) # array

#   # p arr_chars.join

#   new_str = ''
#   arr_chars.each_with_index do |char, index|
#     if char == ' ' &&
#         arr_chars[index + 1].to_i.to_s == arr_chars[index + 1] &&
#       arr_chars.su
#     end
#   end



#   # Build a new string with '(', ')', '-'


# end

# p modify_words('Please call me at five five five one two three four seven eight. Thanks.') #== "Please call me at (555) 123-478. Thanks."
# #



# ## Experiments:
# p ' '.to_i # 0
# p ' '.to_i.to_s  # "0"
