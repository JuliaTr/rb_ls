# Exercise: select all 'g' characters out of a string.

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



# Experiments:
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  if alphabet[counter] == 'g'
    selected_chars << alphabet[counter]
  end

  counter += 1
  break if counter >= alphabet.size
end

p selected_chars   # "g"
