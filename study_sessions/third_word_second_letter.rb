# to_review

=begin
Create a method that takes a string argument and returns a copy 
of the string with every second character in every third word 
converted to uppercase. Other characters should remain the same.
=end

## Refactored:
def to_weird_case(str)
  words = str.split

  2.step(by: 3, to: words.size - 1) do |index_word|
    word = words[index_word]

    1.step(by: 2, to: word.size - 1) do |index_char|
      word[index_char] = word[index_char].upcase
    end
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




## Solution:
def to_weird_case(original)
  arr = original.split

  word_index = 2
  until arr[word_index].nil?

    letter_index = 1
    until arr[word_index][letter_index].nil?
      arr[word_index][letter_index] = arr[word_index][letter_index].upcase
      letter_index += 2
    end

    word_index += 3
  end

  arr.join(' ')
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
