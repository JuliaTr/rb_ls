alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end

# Output:
# a
# b
# c
# d
# e
# f
# ....
# z



# Experiments:

# Change a place for `break if counter == alphabet.size`

# Will have the same output:
alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  puts alphabet[counter]
  counter += 1
  break if counter == alphabet.size
end

# Output:
# a
# b
# c
# d
# e
# f
# ....
# z


alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  puts alphabet[counter]
  break if counter == alphabet.size
  counter += 1
end

# Output:
# a
# b
# c
# d
# e
# f
# ....
# z
# (blank line)



# Change a place for `counter += 1`
alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  counter += 1
  puts alphabet[counter]
end

# Output:
# b
# c
# d
# e
# f
# ....
# z
# (blank line)


alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  counter += 1
  break if counter == alphabet.size
  puts alphabet[counter]
end

# Output:
# b
# c
# d
# ...
# z


alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  counter += 1
  puts alphabet[counter]
  break if counter == alphabet.size
end

# Output:
# b
# c
# d
# e
# f
# ....
# z
# (blank line)
