=begin
Using the each method, write some code to output all of 
the vowels from the strings.
=end

hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

array_of_words = []

hsh.each do |key, value|
  array_of_words << value
end

characters =  array_of_words.flatten.map { |word| word.chars }.flatten

vowels = 'aeiou'

characters.each do |str|
  print str if vowels.include?(str)
end

# Output: euiooueoeeao



## Solution from the assignment:
vowels = 'aeiou'

hsh.each do |_, value|
  p value  # to test
  value.each do |str|
    p str  # to test
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

# Output:
# ["the", "quick"]
# "the"
# e
# "quick"
# u
# i
# ["brown", "fox"]
# "brown"
# o
# "fox"
# o
# ["jumped"]
# "jumped"
# u
# e
# ["over", "the", "lazy", "dog"]
# "over"
# o
# e
# "the"
# e
# "lazy"
# a
# "dog"
# o
