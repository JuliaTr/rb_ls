words = %w(The quick brown fox jumps over the lazy dog)

words.each_with_index do |word, index|
  words[index] = word.upcase if word.length == 5
end

p words 
# ["The", "QUICK", "BROWN", "fox", "JUMPSs", "over", "the", "lazy", "dog"]
