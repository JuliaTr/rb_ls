=begin
Create a method that takes a string argument and returns a hash 
in which the keys represent the lowercase letters in the string, 
and the values represent how often the corresponding letter 
occurs in the string.

Rules:
- count only lowercase letters
- no symbols, whitespaces, upcased letters

'lowercase/uppercase'
'lowercaseuppercase'

Input: string
Output: hash

High-level:
Idea1: 
-Find tally (#tally).
-Select pairs which key is lowercase letters

Idea2:
- Create hash
- Create key-value pair if character is lowercase letter


Idea1: 
-Find tally (#tally).
-Select pairs which key is lowercase letters

Algo:
- Constant alphabet `ALPHA`
- Create tally
- Iterate over each pair     `#select`
  - key is included in `ALPHA`

=end

ALPHA = ('a'..'z').to_a

def count_letters(str)
  hash = str.chars.tally
  hash.select { |key, _| ALPHA.include?(key) }
end

expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1}
p count_letters('woebegone') == expected

expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2,'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
p count_letters('lowercase/uppercase') == expected

expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1}
p count_letters('W. E. B. Du Bois') == expected

p count_letters('x') == {'x' => 1}
p count_letters('') == {}
p count_letters('!!!') == {}