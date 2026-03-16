=begin
Write a method that takes one argument, a string containing one 
or more words, and returns the given string with words that 
contain five or more characters reversed. Each string will 
consist of only letters and spaces. Spaces should be included 
only when more than one word is present.
=end

## Refactored
# Option 1 (`map`):
def reverse_words(str)
  str.split.map { |word| word.size >= 5 ? word.reverse : word }
           .join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
# Works as expected.




# Option 2 (`each_with_object`):
def reverse_words(str)
  arr = str.split.each_with_object([]) do |word, arr|
    arr <<  if word.size >= 5
              word.reverse
            else
              word
            end
  end
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
# Works as expected.





## Solution
def reverse_words(str)
  reversed = []

  str.split.each do |word|
    reversed << (word.size >= 5 ? word.reverse : word)
  end

  reversed.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
# Works as expected.




## Possible solution:
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

=begin
We don't have to modify `word` in place, because we never use 
`reverse!` return value. So we may use `reverse`.
=end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
# Works as expected.
