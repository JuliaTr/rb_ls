=begin
Write a method that takes a string, and returns a new string in 
which every character is doubled.


p 
return new str with all chars doubled

e
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

r
- empty str NOT doubled
- non-alphabetic characters ARE doubled

d
I: str
O: new str with doubled chars
I: news string, double char

h-l
Idea1:
- Iterate over each char
- Push char to new str
- Double this char in new str

a
- `doubled_str` empty
- Iterate over each char in input str
  - Push char * 2 to `doubled_str`
- Return `doubled_str`
=end

## Solution
def repeater(str)
  doubled_str = ''

  str.each_char do |char|
    doubled_str << char * 2
  end

  doubled_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
# All test cases return `true`.




## Possible solution
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
# All test cases return `true`.
