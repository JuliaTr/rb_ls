=begin
Show two different ways to put the expected "Four score and " 
in front of it.
=end

## Solution:
# Option 1:
famous_words = "seven years ago..."

p famous_words.split.prepend("Four score and").join(' ')
p famous_words

# Output:
# "Four score and seven years ago..."
# "seven years ago..."


# Option 2:
famous_words = "seven years ago..."

famous_words[0] = "Four score and "
p famous_words   # "Four score and even years ago..."


# Option 3:
famous_words = "seven years ago..."

famous_words[0, 1] = "Four score and "
p famous_words    # "Four score and even years ago..."


# Option 4:
famous_words = "seven years ago..."

famous_words[0..0] = "Four score and "
p famous_words    # "Four score and even years ago..."


# Option 5:
famous_words = "seven years ago..."

p "Four score and " + famous_words
# "Four score and even years ago..."


# Option 6:
famous_words = "seven years ago..."

famous_words.prepend("Four score and ")
p famous_words
# "Four score and even years ago..."


# Option 7:
famous_words = "seven years ago..."

p "Four score and " << famous_words
p famous_words

# Output:
# "Four score and seven years ago..."
# "seven years ago..."



### Experiments:
p "seven years ago...".chars
# ["s", "e", "v", "e", "n", " ", "y", "e", "a", "r", "s", " ", "a", "g", "o", ".", ".", "."]

p "seven years ago...".split
# ["seven", "years", "ago..."]
