# took 8 mins

=begin
Create a method that takes a string argument and returns a hash 
in which the keys represent the lowercase letters in the string, 
and the values represent how often the corresponding letter 
occurs in the string.

P 
Return hash with frequencies of lowercase letters.

Rules:
- count only lowercase letters
- white spaces and everything else don't count

D
Input: string
Output: hash
Intermediate: --

High-level:
- Create a hash
- Count only lowercase letters

=end

def count_letters(str)
  hash = {}
  str.each_char do |char|
    hash[char] = str.count(char) if char.match?(/[a-z]/)
  end
  hash
end

expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1}
p count_letters('woebegone') == expected

expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2,
            'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
p count_letters('lowercase/uppercase') == expected

expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1}
p count_letters('W. E. B. Du Bois') == expected

p count_letters('x') == {'x' => 1}
p count_letters('') == {}
p count_letters('!!!') == {}
# All test cases return `true`.
