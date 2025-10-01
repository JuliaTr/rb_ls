=begin
Alphabet symmentry:
Consider the word "abode". We can see that the letter `a` is in 
position 1 and b is in position 2. In the alphabet, `a` and `b` are 
also in positions 1 and 2. Notice also that `d` and `e` in abode 
occupy the positions they would occupy in the alphabet, which 
are positions 4 and 5.

Given an array of words, return an array of the number of 
letters that occupy their positions in the alphabet for each 
word.

Input will consist of alphabet characters, both uppercase and 
lowercase. No spaces.

________________________________________________________________

PEDAC
P
Return an array of integers, where integers represent the same 
number of letters which have the same position in the alphabet as
in the string.

Rules/reqs:
- string has only alphabetic characters
- integers represent the same 
number of letters which have the same position in the alphabet as
in the string
- integers are not indices
- the count is case-insensitive

D
Input: array of strings
Output: array of integers
Intermediate: 
- string of charaacters in input string
- integer - to store count
- string with alphabetic characters

High-level:
- Create a string of downcased alphabetic characters
- Create an empty array of counts
- Iterate over an array
  - Create a count 
  - Iterate over each character of a string
    - Compare the position of alphabetic character and each character
      in a string
    - If the position is the same
      - increment a count
    - Otherwise, check another character
  - When the inner iteration is over, push a count into array of counts
- Return array of counts
=end

## Improved solution:
# Constant, `#map`, `#count`:

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def solve(arr)
  arr.map do |str|
    str.each_char.with_index.count do |char, index| # `#count` directly counts
      char.downcase == ALPHABET[index]
    end
  end
end

p solve(["abode","ABc","xyzD"]) == [4, 3, 1]
p solve(["abode","ABc","xyzD"]) == [4, 3, 1]
p solve(["abide","ABc","xyz"]) == [4, 3, 0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
# All test cases return `true`.



## Solution:
def solve(arr)
  # Alphabetic characters:
  alphabet = 'abcdefghijklmnopqrstuvwxyz'

  # Array of counts:
  arr_counts = []

  # Iterate over array of strings"
  arr.each do |str|
    count = 0

    # Iterate over each character of the string and count characters
    # with the same index as character in `alphabet`.
    str.each_char.with_index do |char, index|
      count += 1 if char.downcase == alphabet[index]
    end
    arr_counts << count
  end

  arr_counts
end

p solve(["abode","ABc","xyzD"]) == [4, 3, 1]
p solve(["abode","ABc","xyzD"]) == [4, 3, 1]
p solve(["abide","ABc","xyz"]) == [4, 3, 0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
# All test cases return `true`.
