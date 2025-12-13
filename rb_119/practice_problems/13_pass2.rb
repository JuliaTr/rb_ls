# took 7 mins

=begin
Create a method that takes two strings as arguments and returns 
`true` if some portion of the characters in the first string can 
be rearranged to match the characters in the second. Otherwise, 
the method should return `false`.

You may assume that both string arguments only contain lowercase 
alphabetic characters. Neither string will be empty.

__________________________________________________________

- Iterate over each character in string2
  - If character is NOT in string1
    - Return `false`
- Return `true`
=end

def unscramble(str1, str2)
  str2.each_char do |char|
    return false unless str1.include?(char)
  end

  true
end

p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true
# All test cases return `true`.
