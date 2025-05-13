=begin
Exercise (intermediate): Write a method that takes a string 
and returns that string with only the first character of each 
word capitalized. 

For example:
sentence = "four score and seven years ago"
# should return: "Four Score And Seven Years Ago"
=end

def capitalized_words(str)
  array = str.split
  array.each { |word| word.capitalize! }
  array.join(' ')
end

sentence = "four score and seven years ago"
p capitalized_words(sentence) == "Four Score And Seven Years Ago"
p sentence "four score and seven years ago"
