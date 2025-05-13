=begin
Exercise (basic)​: Write a method that takes a string of 
multiple words and returns a string with all words reversed 
but maintaining their original order in the sentence. 

For example:
quote = "time flies like an arrow"
# should return: "emit seilf ekil na worra"
=end

quote = "time flies like an arrow"

arr = quote.split
p arr  # ["time", "flies", "like", "an", "arrow"]

arr.map do |word|
  word.reverse!
end

p arr # ["emit", "seilf", "ekil", "na", "worra"]
p arr.join(' ')   # "emit seilf ekil na worra"



# In a method (return new string):
def reverse_words(str)
  arr = str.split

  arr.map do |word|
    word.reverse!
  end

  arr.join(' ')
end

quote = "time flies like an arrow"
p reverse_words(quote)   # "emit seilf ekil na worra"
p quote                  # "time flies like an arrow"



# In a method (return the same which is original modified):
def reverse_words(str)
  arr = str.split

  arr.map do |word|
    str.gsub!(word, word.reverse)
  end

  str
end

quote = "time flies like an arrow"
p reverse_words(quote)   # "emit seilf ekil na worra"
p quote                  # "emit seilf ekil na worra"
