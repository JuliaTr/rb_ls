require 'pry'

=begin
The program should create a hash that maps the words that
occure in the sentence to the number of times that they occure
in the sentence.
=end

def word_map(sentence)
  words = sentence.split
  map = {}

  words.each do |word|
    # binding.pry
    if map.key?(word)
      map[word] += 1    # debugged; was `map[word] + 1`
    else
      map[word] = 1
    end
  end

  map
end

p word_map('I want what I want')  # {"I"=>2, "want"=>2, "what"=>1}
# Expected output: {"I"=>2, "want"=>2, "what"=>1}
# Works as expected
