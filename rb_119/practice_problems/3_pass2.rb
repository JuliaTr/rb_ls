=begin
Create a method that takes a string argument and returns a copy 
of the string with every second character in every third word 
converted to uppercase. Other characters should remain the same.

____________________________

2 char in 3 word

'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
0       1    2    3     4     5    6  7    8       9
             3                3            3
             1                1 3          1 3 5 7

'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
 0   1 2  3       4        5    6   7   8     9   10   11
       -                   1 3          1 3 5          1 3 5 7 9

'aaA bB c'
  0   1 2
        -

Rules:
- if word is 1-letter long, it doesn't have index 1

Idea1:
- Convert string into array of words
- Iterate over each word in array  - (`while` loop) - `index_word`
  - Iterate over each character in array - (`while` loop) - `index_char`
    - Upcase if word index + 3 and char index + 2
- Join words in array into string


=end

def to_weird_case(str)
  words = str.split
  index_word = 2

  while index_word < words.size
    index_char = 1

    while index_char < words[index_word].size
      words[index_word][index_char] = words[index_word][index_char].upcase
      index_char += 2
    end
    index_word += 3
  end

  words.join(' ')
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


# Check `#step`
# Work on solution with `#map`
