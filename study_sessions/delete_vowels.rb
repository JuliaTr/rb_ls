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
- Create an empty string `result`
- `count` = 0
- Loop over each value in input string
  - If character is vowel `/aeiouy/`
    - `count` increment by 1
  - If `count` is GREATER 3 
    - Delete character from copy
- Return `result`

"eyelash2!!!"
           ^
=end

## Alternative
def three_vowels(str)
  result = ''
  count = 0

  str.each_char do |char|
    if char.match?(/[aeiouy]/i)
      count += 1
      result << char if count <= 3
    else
      result << char
    end
  end

  result
end

puts three_vowels("tropical") == "tropical"
puts three_vowels("tropicalia") == "tropical"
puts three_vowels("BliMp123") == "BliMp123"
puts three_vowels("eyelash2!!!") == "eyelsh2!!!"
# All test cases return `true`




## Refactored
def three_vowels(str)
  result = ''
  count = 0

  str.each_char do |char|
    count += 1 if char.match?(/[aeiouy]/i)  # case-insensitive regex

    if !char.match?(/[aeiouy]/i) || count < 4
      result << char
    end
  end

  result
end

puts three_vowels("tropical") == "tropical"
puts three_vowels("tropicalia") == "tropical"
puts three_vowels("BliMp123") == "BliMp123"
puts three_vowels("eyelash2!!!") == "eyelsh2!!!"
# All test cases return `true`




## Solution:
def three_vowels(str)
  result = ''
  count = 0
  str.each_char do |char|
    if !char.match?(/[aeiouy]/i)  # case-insensitive regex
      result << char
    elsif char.match?(/[aeiouy]/i) && count < 3
      count += 1
      result << char
    end

    result << char if count > 3 && !char.match?(/[aeiouy]/i)
  end
  result
end

puts three_vowels("tropical") == "tropical"
puts three_vowels("tropicalia") == "tropical"
puts three_vowels("BliMp123") == "BliMp123"
puts three_vowels("eyelash2!!!") == "eyelsh2!!!"
# All test cases return `true`
