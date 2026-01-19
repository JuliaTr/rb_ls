# to review

=begin
Given a word, return a copy of that word, removing every vowel after the 
first three:

puts three_vowels("tropical") == "tropical" 3 vowels
puts three_vowels("tropica|lia") == "tropical" 5 vowels
puts three_vowels("BliMp123") == "BliMp123"
puts three_vowels("eye|lash2!!!") == "eyelsh2!!!" 

Rules:
"y" is vowel

Input: string
Output: copied string

High-level:
Idea1
Create a copy.
Loop over each value in input string
Delete vowels after three in that copy

Algo:
- Create a copy -> convert to array
- `count` = 0
- Loop over each value in input string
  - If character downcased is vowel `/aeiouy/`
    - `count` increment by 1
  - If `count` is GREATER 3 
    - Delete character from copy
- Return array joined into string

"eyelash2!!!"
           ^
=end

def three_vowels(str)
  str2 = ''
  count = 0
  str.each_char do |char|
    if !char.downcase.match?(/[aeiouy]/)
      str2 << char
      
    elsif char.downcase.match?(/[aeiouy]/) && count < 3
      count += 1
      str2 << char
    end

    str2 << char if count > 3 && !char.downcase.match?(/[aeiouy]/)
  end
  str2
end

puts three_vowels("tropical") == "tropical"
puts three_vowels("tropicalia") == "tropical"
puts three_vowels("BliMp123") == "BliMp123"
puts three_vowels("eyelash2!!!") == "eyelsh2!!!"
# All test cases return `true`