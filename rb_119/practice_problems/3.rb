=begin
Create a method that takes a string argument and returns a copy 
of the string with every second character in every third word 
converted to uppercase. Other characters should remain the same.

P
Return a copy of input string every second character in every third
word converted to uppercase

Rules:
- if single-letter word -> return as is

D
Input: string
Output: copied string
Intermediate:
- array:  ---
- string:  ---
- hash:   ---
- integer: iteration over indexes
- range: iteration over indexes

High-level:
- Iterate over each word of input string.
- Iterate over each character of each word.
- Upcase every 2nd character in every 3rd word.


Algo:
- Iterate for each word from 1 index upto string size - 1 (`word`, `index1`)
  - If `index1` equal to 0 OR NOT divisible by 3
    - next
  Otherwise:
  - Iterate over each character with index of `word` (`char`, `index2`)
    - If `index2` is odd
      - Upcase `char`


'Lorem Ipsum is simply dummy text of the printing world'
       ^
  'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
         ^

=end

## Refactored:
def upcase_characters(str)
  index2 = 0
  str.chars.map do |char|
    char = index2.odd? ? char.upcase : char
    index2 += 1
    char
  end
end

def to_weird_case(str)
  new_str = str.split
  index = 2

  while index < new_str.size
    new_str[index] = upcase_characters(new_str[index]).join
    index += 3
  end

  new_str.join(' ')
end

original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected
# All test cases return `true`.



## Solution:
def to_weird_case(str)
  new_str = str.split
  index = 2

  while index < new_str.size
    index2 = 0
    result =  new_str[index].chars.map do |char|
                char = index2.odd? ? char.upcase : char
                index2 += 1
                char
              end

    new_str[index] = result.join

    index += 3
  end

  new_str.join(' ')
end

original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected
# All test cases return `true`.
