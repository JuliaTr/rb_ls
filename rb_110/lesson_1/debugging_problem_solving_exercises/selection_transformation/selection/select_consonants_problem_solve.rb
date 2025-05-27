=begin
Basic​: Write a method `select_consonants` that takes a string 
as an argument and returns a new string containing only the 
consonants from the original string.
=end  

def select_consonants(str)
  consonants = 'BCDFGHJKLMNPQRSTVWZYZbcdfghjklmnpqrstvwzyz'
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]

    if consonants.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end

  selected_chars
end

p select_consonants('Launch School') == 'LnchSchl' # true
p select_consonants('AEIOU') == ''  # true
p select_consonants('1234567890') == ''   # true
p select_consonants('Ruby Programming') == 'RbyPrgrmmng' # true



# To remind myself:
# select all 'g' characters out of a string.
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char
  end

  counter += 1
  break if counter == alphabet.size
end

p selected_chars  # "g"
