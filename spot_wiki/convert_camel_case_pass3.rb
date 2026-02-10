=begin
Modify the kebabize function so that it converts a camel 
case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters



Thoughts:
Before each upcesed letter or substitute integers, need to insert `-`


should only contain lowercase letters

High-level:
Idea1:
- Loop over a string
- Define if a char is letter and downcase
- Create array of words
- Join words with `-`

Algo:
- Create empty `arr`
- `temp` str = ''

- Loop over each character string
  - if a char is letter and downcase
    - `temp` << char
  - if a char is letter and upcase
    - `arr` << `temp`
    - `temp` = ''
    - `temp` << char downcased

arr << temp

- Return joined `arr` `-`

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps

=end

def kebabize(str)
  arr = []
  temp = ''

  str.each_char do |char|
    if char.match?(/[a-z]/)
      temp << char
    elsif char.match?(/[A-Z]/)
      arr << temp
      temp = ''
      temp << char.downcase
    end
  end

  arr << temp

  arr.join('-')
end

# Examples:
p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
