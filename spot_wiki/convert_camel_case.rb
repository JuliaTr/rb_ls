=begin
https://github.com/The-SPOT-Hub/SPOT-Wiki/blob/main/Lesson%20Materials%20%26%20Code/RB101-RB110/RB110%20Live%20Assessment%20Codewars%20Practice%20Problems.pdf


Modify the kebabize function so that it converts a camel case string into a kebab case.
kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps

Notes:
the returned string should only contain lowercase letters

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

Note: return a new string

P
Return a new string with downcased letters with defice between words

Rules:
- strings have upcase letters
- every word after the first one is capitalized
- if number -> don't use it

D
Input: string
Output: new string
Intermediate:
- string: ---
- array: convert string to array to iterate
- hashes: ---
- integer: iterate over indexes
- range: iterate over indexes

High-level:
Idea1:
- Iterate over each character of a string
- Downcase it
- Insert `-` between words

Idea2:
- Convert string into array of words
- Iterate over each word
- Downcase it
- Join with `-` between words



Idea2:
Main:
- Convert string into array of words (`words`)

Return new array with downcased words
- Iterate over each word in `words` (`#map`)
- Downcase it

- Join with `-` between words


Idea1:
- Create a `words`
- Iterate over each character of a string with index (`char`, `index`)
  - Create `temp` sting
  - Downcase CHAR
  - Add CHAR to `temp`
  - IF next CHAR is upcased
    - Add `temp` to words

- Insert `-` between words

If array has `"3"`
  - delete
`#delete`
`#delete_if`
`#delete_at` (index)
=end

def return_array_words(str)
  words = []
  temp = ''

  str.each_char.with_index do |char, index|
    temp << char.downcase

    if str[index + 1].nil?
      words << temp
    elsif !str[index + 1].nil? && str[index + 1] == str[index + 1].upcase
      words << temp
      temp = ''
    end
  end

  words
end

def kebabize(str)
  words = return_array_words(str)
  selected = words.select { |word| !(word.to_i.to_s == word) }
  selected.join('-')
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
# Works as expected