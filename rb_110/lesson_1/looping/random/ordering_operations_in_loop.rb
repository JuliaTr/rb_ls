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
