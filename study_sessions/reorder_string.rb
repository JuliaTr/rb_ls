# review

=begin
Re-order the characters of a string, so that they are 
concatenated into a new string in 
"case-insensitively-alphabetical-order-of-appearance" order.

Whitespace and punctuation shall simply be removed!
The input is restricted to contain no numerals and only words 
containing the english alphabet letters.

Intermediate: ASCII value, 

High-level:
idea1:
- Delete non alphabetical chars
- Sort arr of chars
=end

## Refactored (breakdown):
def alphabetized(str)
  letters = str.delete('^a-zA-Z')
  arr = letters.chars

  # Primary criteria: downcased char
  # Secondary criteria: original index of the character in the string
  arr.each_with_index
     .sort_by { |char, index| [char.downcase, index] }
  # [["B", 7], ["b", 9], ["e", 2], ["e", 11], ["h", 1], ["H", 3], 
  # ["i", 8], ["l", 5], ["l", 10], ["o", 4], ["T", 0], ["y", 6]]
     .map { |char, index| char }
  # ["B", "b", "e", "e", "h", "H", "i", "l", "l", "o", "T", "y"]
     .join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
# All test cases return `true`.




## Solution:
def alphabetized(str)
  letters = str.delete('^a-zA-Z')
  arr = letters.chars
  
  result = arr.sort do |char1, char2|
    # if they are case-insensitive equal...
    if (char1.downcase <=> char2.downcase) == 0
      # ...sort by their original index in the array
      arr.find_index(char1) <=> arr.find_index(char2)
    else
      # otherwise, sort case-insensitively
      char1.downcase <=> char2.downcase
    end
  end.join

  p result
  arr
end

p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
# All test cases return `true`.





## Experiment
# If test case is `"BbeeHhilloTy"`
def alphabetized(str)
  letters = str.delete('^a-zA-Z')
  letters.chars.sort_by { |char| char.downcase }.join
end

p alphabetized("The Holy Bible") == "BbeehHilloTy" # false

p alphabetized("The Holy Bible") == "BbeeHhilloTy" # true
p alphabetized("!@$%^&*()_+=-`,") == ""            # true
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
# true

=begin
In Ruby, `sort` and `sort_by` methods sort values randomly when 
`#<=>` returns `0`. That’s why the same pattern `h` and `H`, `t` 
and `T` is sorted differently. That’s why `"aaaaCcdddeLnooorstTWy"` 
worked, but `"BbeehHilloTy"` failed.
=end
