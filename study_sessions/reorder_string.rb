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

## Solution
def alphabetized(str)
  letters = str.delete('^a-zA-Z')
  arr = letters.chars
  
  arr.sort do |char1, char2|
    if (char1.downcase <=> char2.downcase) == 0
      arr.find_index(char1) <=> arr.find_index(char2)
    else
      char1.downcase <=> char2.downcase
    end
  end.join
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
