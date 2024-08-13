### Show two different ways to put the expected "Four score and " in front of the sring below.

famous_words = "seven years ago..."

## Option 1:
puts "Four score and " + famous_words

## Option 2:
puts famous_words.prepend("Four score and ")

# or

puts "Four score and " << famous_words