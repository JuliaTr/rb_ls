# took 13 mins

=begin
Create a method that takes a string as an argument and returns 
true if the string is a pangram, false if it is not.

Pangrams are sentences that contain every letter of the alphabet 
at least once. For example, the sentence "Five quacking zephyrs 
jolt my wax bed." is a pangram since it uses every letter at 
least once. Note that case is irrelevant.

P
Return boolean; check if sentence contain each letter from
alphabet.

Rules:
- case is irrelevant
- we don't need punctuation and white spaces

D
Input: string
Output: boolean
Intermediate:
- array: ---
- hash: ---
- string: alphabet
- integer: iteration
- range: iteration
- boolean: check if character is a letter

High-level:
Idea1:
- Iterate over input string and check is a letter is in 
  alphabet  X

Idea2:
- Iterate over alphabet and check if a letter from it is 
  in sentence.
- If we don't find letter in input string, return false
- If find, check the next one
- If we found all, return true
=end

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def is_pangram(str)
  ALPHABET.each_char do |char|
    char = char.downcase
    return false if !str.include?(char)
  end

  true
end

p is_pangram('The quick, brown fox jumps over the lazy dog!') == true
p is_pangram('The slow, brown fox jumps over the lazy dog!') == false
p is_pangram("A wizard's job is to vex chumps quickly in fog.") == true
p is_pangram("A wizard's task is to vex chumps quickly in fog.") == false
p is_pangram("A wizard's job is to vex chumps quickly in golf.") == true

my_str = 'Sixty zippers were quickly picked from the woven jute bag.'
p is_pangram(my_str) == true
