# Exercise: Capitalize each word.
words = "the flinstones rock"
p words.object_id    # 60

# Example: 
# words = "The Flinstones Rock"

array_of_words = words.split
# p array_of_words    # ["the", "flinstones", "rock"]

array_of_words.each do |word|
  words.gsub!(word, word.capitalize)
end

p words   # "The Flinstones Rock"
p words.object_id     # 60

=begin
The `word.capitalize` returns a new string. The `gsub!` replaces
all accurences of the original word in the original string
with a new string.
=end


# Optional:
words = "the flintstones rock"
array_of_words = words.split
capitalized = array_of_words.map { |word| word.capitalize }
words.replace(capitalized.join(' '))
p words    # "The Flintstones Rock"



# Solution from assignment:
words = "the flinstones rock"

result = words.split.map { |word| word.capitalize }.join(' ')

p words   # "the flinstones rock"
p result  # "The Flinstones Rock"
