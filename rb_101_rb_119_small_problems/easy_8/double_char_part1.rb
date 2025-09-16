=begin
Write a method that takes a string, and returns a new string 
in which every character is doubled.
=end

def repeater(str)
  str.chars.map { |char| char + char }.join
end

p repeater('Hello') == "HHeelllloo"               # true
p repeater("Good job!") == "GGoooodd  jjoobb!!"   # true
p repeater('') == ''                              # true



## Possible solution:
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

p repeater('Hello') == "HHeelllloo"               # true
p repeater("Good job!") == "GGoooodd  jjoobb!!"   # true
p repeater('') == ''                              # true
