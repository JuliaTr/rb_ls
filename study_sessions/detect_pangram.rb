# (recorded) review
# took 14 mins

=begin
Detect Pangram
A pangram is a sentence that contains every single letter
of the alphabet at least once.

For example: the sentence "The quick brown fox jumps
over the lazy dog" is a pangram, because it uses the letters
A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return
True if it is, False if not. Ignore numbers and punctuation.

___________________________________

Idea1:
- Create alphabet
- Iterate over each character in alphabet determine if it is
  included in input string. If not, return `false`
- If all letters are included, return `true`

Idea2:
- Create alphabet
- Iterate over each character in input string and determine
  if it is a letter and included in alphabet. If not, return `false`
- If all letters are included, return `true`
=end

## Refactored
def is_pangram(str)
  downcased = str.downcase

  ('a'..'z').each do |alpha_char|
    return false unless downcased.include?(alpha_char)
  end

  true
end

p (is_pangram('The quick brown fox jumps over the lazy dog.') == true)
p (is_pangram('This is not a pangram.') == false)
# All test cases return `true`



## Solution
ALPHABET = 'abcdefghijklmnopqrstuvwxyz'   # easy to make a typo

def is_pangram(str)
  downcased = str.chars.map(&:downcase)

  ALPHABET.each_char do |alpha_char|
    return false if !downcased.include?(alpha_char)
  end

  true
end

p (is_pangram('The quick brown fox jumps over the lazy dog.') == true)
p (is_pangram('This is not a pangram.') == false)
# All test cases return `true`
