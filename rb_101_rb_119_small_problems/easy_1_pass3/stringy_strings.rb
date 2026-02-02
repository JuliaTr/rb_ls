=begin
Stringy Strings
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

Rules:
- The length of a string should be the same as argument.

High-level:
Idea1:
Put 1, then put 0 until the length length of a string the same as argument.

Algo:
- Create an empty string `str` `''`
- Loop number of times the same as as argument (`#times`)
  - if empty or str[-1] is `'0'` 
    - Add `'1'`
  - else
    - Add `'0'`
- Return `str`

stringy(6) == '101010'

'10'
=end

## More idiomatic:
def stringy(size)
  str = ''

  size.times do |index|
    str << (index.even? ? '1' : '0')
  end

  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# All test cases return `true`.



## Refactored:
def stringy(number)
  str = ''

  number.times do 
    digit = str.empty? || str[-1] == '0' ? '1' : '0'
    str << digit
  end

  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# All test cases return `true`.



## Solution:
def stringy(number)
  str = ''

  number.times do
    if str.empty? || str[-1] == '0'
      str << '1'
    else
      str << '0'
    end
  end

  str
end

p stringy(3) # "101"

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# All test cases return `true`.




## Possile solution:
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# All test cases return `true`.
