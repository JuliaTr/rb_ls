=begin
Write a method that takes one argument, a positive integer, 
and returns a string of alternating 1s and 0s, always starting 
with 1. The length of the string should match the given integer.

puts stringy(6) == '101010'     # => true
puts stringy(9) == '101010101'  # => true
puts stringy(4) == '1010'       # => true
puts stringy(7) == '1010101'    # => true

_______________________________________________________________

PEDAC:

P: write a method which returns a news string with `1` and `0`.

Reqs/rules:
- the first integer always `1`.
- the total number of integers is the number provided in the
  argument.
- `1`s and `0`s should alternate

Examples: all

Data Structure: integer, strings

Algorithm:
- Define a method `stringy` which takes an integer as an argument
- Initialize an empty string to return from the method
- While new string is not the length provided in the argument
  - push `1`
  - push `0`
=end

def stringy(number)
  new_str = ''

  while new_str.length != number
    new_str << '1'
    break if new_str.length == number
    new_str << '0'
  end

  new_str
end

puts stringy(6) == '101010'     # => true
puts stringy(9) == '101010101'  # => true
puts stringy(4) == '1010'       # => true
puts stringy(7) == '1010101'    # => true


=begin
PEDAC (part)

Notes:
- exute action a fixed number of times - the length of the string

Hight-level:
- Create new array
- Iterate number times with `number`, add `1` or `0` to array
- Return new array, convert to string

Algo:
- Create `numbers` empty array
- Iterate number times over indexes (index)
  - If `index` even,
    - Add `1` to `numbers`
  - Otherwise,
    - Add `0` to `numbers` 
- Return `numbers` and join into string
=end
## Possible solution:
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'     # => true
puts stringy(9) == '101010101'  # => true
puts stringy(4) == '1010'       # => true
puts stringy(7) == '1010101'    # => true




#### Refactored (further exploration):
# Option 1:
def stringy(size, start=1)
  numbers = []

  second_number = start != 1 ? 1 : 0 

  size.times do |index|
    number = index.even? ? start : second_number
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'        # => true
puts stringy(9, 0) == '010101010'  # => true
puts stringy(4, 0) == '0101'       # => true
puts stringy(7) == '1010101'       # => true


# Option 2:
def stringy(size, start=1)
  numbers = []

  second_number = 1 - start    # `1 - 1 = 0`; `1 - 0 = 1` 

  size.times do |index|
    number = index.even? ? start : second_number
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'        # => true
puts stringy(9, 0) == '010101010'  # => true
puts stringy(4, 0) == '0101'       # => true
puts stringy(7) == '1010101'       # => true



### Further exploration:
def stringy(size, start=1)
  numbers = []

  size.times do |index|
    if start != 1
      number = index.even? ? start : 1
      numbers << number
    else
      number = index.even? ? start : 0
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6) == '101010'        # => true
puts stringy(9, 0) == '010101010'  # => true
puts stringy(4, 0) == '0101'       # => true
puts stringy(7) == '1010101'       # => true
