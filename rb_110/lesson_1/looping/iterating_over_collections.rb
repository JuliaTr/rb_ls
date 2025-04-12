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


empty_string = ''
counter = 0

loop do
  puts empty_string[counter]
  counter += 1
  break if counter == empty_string.size
end

# Output: infinite loop


alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = alphabet.size

loop do
  counter += 1
  break if counter == alphabet.size
  puts alphabet[counter]
end

# Output: infinite loop


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
