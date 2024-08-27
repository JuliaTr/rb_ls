=begin

PROBLEM
Write a method that accepts an alphabetical character and returns
the 'value' of that character.
The 'value' is relative to where the letter appears in the alphabet.
For invalid inputs, return `nil`.

EXAMPLES
'a' is 1, 'b' is 2, 'B' is 2, etc...

__________________________________________________________________

PEDAC

Problem:
  - Input: a string object
  - Output: return an integer object

  - Rules:
    - Explicit: 
      - The string is an alphabetical character.
      - The 'value' is relative to where the letter appears in the alphabet.

    - Implicit:
      - Would an empty string be considered as an invalid INPUT?
      - Should we check whether another options of the INPUT, except an empty string,
        would be considered invalid? If an input consists of:
          * a string with 2 and more characters (e.g. `as`);
          * all integers (e.g. 1 / 115);
          * a string of integers (e.g. '1' / '11');
          * a string of character(s) and an integer(s) (e.g. 'a11' / 'a1a3s1');
          * a string without any characters (e.g. '  ');
          * a string of one or more symbols (e.g. '!@#$%^&*()');
          * a string of a symbol(s) and a character(s) (e.g. '%asdf').
      - Can the return value be an index + 1 of the letter in the alphabet?

Examples and Test Cases:
  - All examples conform the rules.

Data Structure:
  - Array

Algorithm:
  - Define a method called `converted_alphabet` that takes one argument `letter`.
  - Convert the alphabetical letters to an array.
  - Create an array of numbers of that number of letters in an alphabet.
  - Compare a letter in the INPUT with the letter in the alphabet to find it.
  - Return an integer as an index + 1
=end

## Refactored

def convert_alphabet(letter)
  return nil if letter.empty?

  alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
  index = 0
  loop do
    alphabet.index(alphabet[index])
    break if letter.downcase == alphabet[index]

    index += 1
  end
  index += 1
end

p convert_alphabet('a')  # 1
p convert_alphabet('A')  # 1
p convert_alphabet('b')  # 2
p convert_alphabet('B')  # 2
p convert_alphabet('c')  # 3
p convert_alphabet('')   # nil


# The following use cases are not covered for input validation
# p convert_alphabet('as')
# p convert_alphabet(1)
# p convert_alphabet(115)
# p convert_alphabet('1')
# p convert_alphabet('11')
# p convert_alphabet('a11')
# p convert_alphabet('a1a3s1')
# p convert_alphabet(' ')
# p convert_alphabet('!@#$%^&*()')
# p convert_alphabet('%asdf')



## Experiments:
def convert_alphabet(letter)
  return nil if letter.empty?
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  index = 0
  loop do
    if letter.downcase == alphabet[index]
      alphabet.index(alphabet[index])
      break
    else
      index += 1
    end
  end
  index += 1
end

