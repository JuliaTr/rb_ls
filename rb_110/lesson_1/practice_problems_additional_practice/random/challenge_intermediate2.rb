=begin
Exercise (intermediate)​: Given the string below, create a hash 
that counts the occurrence of each vowel (a, e, i, o, u) regardless 
of case.
=end

sentence = "Launch School is a great place to learn programming"

# Example: {"a"=>6, "e"=>3, "i"=>2, "o"=>4, "u"=>1}

result = {}
vowels = ['a', 'e', 'i', 'o', 'u']

vowels.each do |letter|
  frequency = sentence.count(letter)
  result[letter] = frequency
end

p result   # {"a"=>6, "e"=>3, "i"=>2, "o"=>4, "u"=>1}
