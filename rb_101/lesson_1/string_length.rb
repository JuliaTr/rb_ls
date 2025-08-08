=begin
Write a method that takes one argument, a sentence string, 
and returns an array of integers. The value of each integer 
in the array should be equal to the length of the word in 
the corresponding position in the sentence. For example, if 
the sentence was `'To be or not to be'` the array of integers 
would be [2, 2, 2, 3, 2, 2].
=end

## Possible solutions to learn from:
# Option 1:
def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

p string_lengths('To be or not to be')  
# [2, 2, 2, 3, 2, 2]    (as expected)



# Option 2:
def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end

p string_lengths('To be or not to be')
# [2, 2, 2, 3, 2, 2]    (as expected)



# Option 3 (wrong return value):
def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

p string_lengths('To be or not to be')
# ["To", "be", "or", "not", "to", "be"]    (not as expected)

=begin
The `do..end` block passed to the `each` method invoked on the
object referenced by `lengths`. The `each` method returns the
original object. As this return value is the last evaluated expression
in the method, it is returned implicitly. That's why 
`["To", "be", "or", "not", "to", "be"]` is returned from the method
`string_lengths`.
=end



# Option 3 (bug fix):
def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end

  lengths
end

p string_lengths('To be or not to be')
# [2, 2, 2, 3, 2, 2]    (as expected)



# Option 4 (wrong return value):
def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do   # issue is here
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

p string_lengths('To be or not to be')
# [2, 2, 2, 3, 2]    (not as expected)

=begin
`["To", "be", "or", "not", "to", "be"]`
`counter = 1`

Iteration 1:
until 1 == 6        # `strings.size` have 6 characters
  word_length = 2   # `"To"`
  .....
  2 = 1 + 1
end

Iteration 2:
until 2 == 6
  word_length = 2   # `"be"`
  ....
  3 = 2 + 1
end

Iteration 3:
until 3 == 6
  word_length = 2   # `"or"`
  ....
  4 = 3 + 1
end

Iteration 4:
until 4 == 6
  word_length = 3   # `"not"`
  ....
  5 = 4 + 1
end

Iteration 5:
until 5 == 6
  word_length = 2   # `"to"`
  ....
  6 = 5 + 1
end

Iteration 6:
until 6 == 6
  break
end
=end



# Option 4 (bug fix):
def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter > strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

p string_lengths('To be or not to be')
# [2, 2, 2, 3, 2, 2]    (as expected)
