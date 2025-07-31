=begin
Write a method that takes a non-empty string argument, and 
returns the middle character or characters of the argument. If 
the argument has an odd length, you should return exactly one 
character. If the argument has an even length, you should 
return exactly two characters.

Test cases:
center_of('I love Ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

___________________________________________________________

Note:
odd length: 
'I love Ruby' - 11
11 / 2 = 5 (index)

even length:
'Launch' - 6
6 / 2 = 3 (index)
2 (index)
=end

## Solution:
def center_of(str)
  index = str.length / 2
  str.length.odd? ? str[index] : str[index - 1..index]
end

p center_of('I love Ruby') == 'e'     # true
p center_of('Launch School') == ' '   # true
p center_of('Launch') == 'un'         # true
p center_of('Launchschool') == 'hs'   # true
p center_of('x') == 'x'               # true



## Solution with steps broken down:
def center_of(str)
  index = str.length / 2
  if str.length.odd? 
    str[index] 
  else
    str[index - 1..index]
  end
end

p center_of('I love Ruby') == 'e'     # true
p center_of('Launch School') == ' '   # true
p center_of('Launch') == 'un'         # true
p center_of('Launchschool') == 'hs'   # true
p center_of('x') == 'x'               # true
