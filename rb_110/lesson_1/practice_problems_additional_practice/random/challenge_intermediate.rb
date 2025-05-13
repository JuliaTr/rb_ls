=begin
Exercise (​intermediate​): Create a hash that expresses the frequency 
with which each word occurs in this string.
=end
statement = "The quick brown fox jumps over the lazy dog"

# Example: { "The" => 1, "quick" => 1, "brown" => 1, ... }

result = {}
array = statement.split

array.each do |word|
  word_frequency = array.count(word)
  result[word] = word_frequency
end

p result
# {"The"=>1, "quick"=>1, "brown"=>1, "fox"=>1, "jumps"=>1, 
# "over"=>1, "the"=>1, "lazy"=>1, "dog"=>1}
