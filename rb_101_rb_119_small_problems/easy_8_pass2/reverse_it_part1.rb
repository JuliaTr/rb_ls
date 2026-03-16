=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.


p
e
r
- reversed only order of words, but not each word

d
I: str of words
O: new string
I: convert to array

h-l
Idea:
- Iterate over each word from array
- prepend this word in new string

a
- `reversed` empty array
- Iterate over each word from array
  - prepend this word in new string
- retrn `reversed` join (' ')
=end

## Solution
def reverse_sentence(str)
  reversed = []
  str.split.each do |word|
    reversed.prepend(word)
  end

  reversed.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
