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

## Solution:
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
# All test cases return `true`.




## Further exploration:
# Refactored:
def kebabize(str)
  result = ''
  str.each_char do |char|
    if char.match?(/[A-Z]/) && char != str[0]
      result << '-' + char.downcase
    elsif char.match?(/[A-Z]/)
      result << char.downcase
    elsif char.match?(/[a-z]/)
      result << char
    end
  end
  result
end

p kebabize('KebabizeThis') == 'kebabize-this'

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
# All test cases return `true`.



def kebabize(str)
  arr = []
  temp = ''

  str.each_char do |char|
    if char.match?(/[a-z]/)
      temp << char
    elsif char.match?(/[A-Z]/)
      unless temp.empty?
        arr << temp
        temp = ''
      end
      temp << char.downcase
    end
  end

  arr << temp

  arr.join('-')
end

# Examples:
p kebabize('KebabizeThis') == 'kebabize-this'

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
# All test cases return `true`.



# with `String#gsub`:

