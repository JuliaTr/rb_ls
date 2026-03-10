=begin
Re-order the characters of a string, so that they are 
concatenated into a new string in 
"case-insensitively-alphabetical-order-of-appearance" order.

Whitespace and punctuation shall simply be removed!
The input is restricted to contain no numerals and only words 
containing the english alphabet letters.

High-level:
idea1:
- Delete non alphabetical chars
- Sort arr of chars
=end

# If test case is `"BbeeHhilloTy"`
def alphabetized(str)
  letters = str.delete('^a-zA-Z')
  letters.chars.sort_by { |char| char.downcase }.join
end

p alphabetized("The Holy Bible") == "BbeeHhilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
# All test cases return `true`.
