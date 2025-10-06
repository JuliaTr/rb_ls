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
