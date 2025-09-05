=begin
Write a method that determines and returns the ASCII string 
value of a string that is passed in as an argument. The ASCII 
string value is the sum of the ASCII values of every character 
in the string. (You may use String#ord to determine the ASCII 
value of a character.)
=end

def ascii_value(str)
  str.chars.map { |chr| chr.ord }.sum
end

p ascii_value('Four score') == 984       # true
p ascii_value('Launch School') == 1251   # true
p ascii_value('a') == 97                 # true
p ascii_value('') == 0                   # true



## Possible solution:
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984       # true
p ascii_value('Launch School') == 1251   # true
p ascii_value('a') == 97                 # true
p ascii_value('') == 0                   # true



## Experiments:
p 'hello'.sum    # 532


## Furtther exploration:
char = 'F'
p char.ord    # 70
p char.ord.chr  # F
p char.ord.chr == char   # true

p Encoding::BINARY == Encoding::ASCII_8BIT  # true

# `str.ord` returns the integer ordinal of the first character
# If a string is longer, `str.ord.chr` returns the first character.
str = 'Launch School'
p str.ord              # 76
p str.ord.chr          # "L"
p str.ord.chr == str   # false

str = 'L'
p str.ord              # 76
