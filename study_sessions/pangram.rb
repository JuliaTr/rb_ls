=begin
Given an input string, determine if the string is a pangram,
meaning every letter in the alphabet appears in the string at 
least once.
______________________________________________________________

PEDAC
P
Return a boolean which will tell if a string has every letter 
in from the alphabet.

Rules/reqs:
- letter should >=1 in a string
- case-insensitive

D
Input: String
Output: boolean
Intermediate:
- string for alphabet

High-level:
- Create alphabet string
- Iterate over each from alphabet
  - see if each char in alphabet is in input string, return 
  `false` as soon as the letter isn't in string; `true` otherwise.

=end

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def pangram?(str)
  ALPHABET.chars.all? { |char| str.include?(char) }
end

p pangram?('The quick brown fox jumps over the lazy dog!') == true
p pangram?('The slow brown fox jumps over the lazy dog!') == false
# All test cases return `true`.
