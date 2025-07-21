# # Using the following code, split the value of `alphabet` 
# # by individual characters and print each character.

# alphabet = 'abcdefghijklmnopqrstuvwxyz'


# ## Solution:
# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# alphabet.chars.each { |char| puts char }

# # Output:
# # a
# # b
# # c
# # d
# # ...
# # v
# # w
# # x
# # y
# # z



# ## Possible solution:
# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# puts alphabet.split('')

# # Output:
# # a
# # b
# # c
# # d
# # ...
# # v
# # w
# # x
# # y
# # z


# Experiments:
a = 'Wonderful'
p a.split('')   # ["W", "o", "n", "d", "e", "r", "f", "u", "l"]
p a.split(' ')  # ["Wonderful"]
p a.split       # ["Wonderful"]

b = 'Wonderful World'
p b.split       # ["Wonderful", "World"]
p b.split(' ')  # ["Wonderful", "World"]
