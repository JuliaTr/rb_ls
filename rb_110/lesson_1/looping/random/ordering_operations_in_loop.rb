alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  counter += 1
  break if counter == alphabet.size
  puts alphabet[counter - 1]
end

# Output:
# a
# b
# c
# d
# ...
# z



# Empty string
empty_string = ''
counter = 0

loop do
  break if counter == empty_string.size
  puts empty_string[counter]
  counter += 1
end

# Output: (breaks on the first iteration)


empty_string = ''
counter = 0

loop do
  counter += 1
  break if counter > empty_string.size
  puts empty_string[counter - 1]
end

# Output: (breaks on the first iteration)


empty_string = ''
counter = 0

loop do
  break if counter >= empty_string.size
  puts empty_string[counter]
  counter += 1
end

# Output: (breaks on the first iteration)



# Starting with a counter that equals the string size
alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = alphabet.size

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end

# Output: (breaks on the first iteration)


alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = alphabet.size

loop do
  break if counter >= alphabet.size
  puts alphabet[counter]
  counter += 1
end

# Output: (breaks on the first iteration)
