## `String#delete` (non-destructive):
p 'abcabc'.delete('a') # "bcbc"

str = 'abcabc'
p str.delete('a')  # "bcbc"
p str              # "abcabc"

# `str` is reassigned:
str = str.delete('a') # "bcbc"
p str