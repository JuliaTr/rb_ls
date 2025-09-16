=begin
Write a method that takes one argument, a string containing 
one or more words, and returns the given string with words 
that contain five or more characters reversed. Each string 
will consist of only letters and spaces. Spaces should be 
included only when more than one word is present.
=end

def reverse_words(str)
  str.split.map do |word|
    if word.length <= 4
      word
    else
      word.reverse
    end
  end.join(' ')
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

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
# Works as expected.
