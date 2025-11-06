=begin
The `reverse_sentence` method should return a new string with 
the words of its argument in reverse order, without using any 
of Ruby's built-in reverse methods. However, the code below 
raises an error. Change it so that it behaves as expected.
=end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words  # issue is with `words[i]`
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# Output:
# no implicit conversion of Array into String (TypeError)



## Bug fix:
# Option 1:
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words 
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing') # "doing you are how"

=begin
irb(main):009:0> reversed_word = ["how"]
=> ["how"]
irb(main):010:0> ["are"] + reversed_word
=> ["are", "how"]
=end


# Option 2:
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')  # "doing you are how"
