# (recorded) review

=begin
Alphabet Symetry:
Consider the word `"abode"`. The letter `a` is in the position 1
and `b` is in position 2.

In the alphabet, `a` and `b` are also in position 1 and 2.

The letters `d` and `e` in "abode" occupy the positions they
would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of 
letters that occupy their posittions in the alphabet for 
each word, for example.

solve(["abcde", "ABC", "xyzD"]) -- [4, 3, 1]

Input will consist of alphabetic characters, both uppercase
and lowercase. No spaces.

_________________________________

P
Return array with count of how many letters in a string have
the same index as letters in alphabet.

"encode", "abc", "xyzD", "ABmD"]
   2       012       3    01 3
   1        3       1       3

Rules:
- case doen't matter

Idea1:
Create alphabet. Loop over each word in array, loop over each 
character and check if its index is the same as index the same 
letter in alphabet.

Algo:
- Create alphabet. 
- Loop over each word in array, (`#map`)
  - Init `count` and assign `0`
  - loop over each character
    - if its index is the same as index the same letter in alphabet
      - Increment `count`
  - Return `count`

=end

## Idiomatic solution:
def solve(arr)
  arr.map do |word|
    word.downcase.each_char.with_index.count do |char, idx|
      char == ('a'..'z').to_a[idx]
    end
  end
end

puts solve(["abode", "ABc", "xyzD"]) == [4, 3, 1]
puts solve(["abide", "ABc", "xyz"]) == [4, 3, 0]
puts solve(["IAMDEFANDJKL", "thedefgh", "xyzDEFghijabc"]) == [6, 5, 7]
puts solve(["encode", "abc", "xyzD", "ABmD"]) == [1, 3, 1, 3]
# All test cases return `true`.


## More idiomatic solution:
def solve(arr)
  alphabet = ('a'..'z').to_a

  arr.map do |word|
    word.each_char.with_index.count do |char, idx|
      char.downcase == alphabet[idx]
    end
  end
end

puts solve(["abode", "ABc", "xyzD"]) == [4, 3, 1]
puts solve(["abide", "ABc", "xyz"]) == [4, 3, 0]
puts solve(["IAMDEFANDJKL", "thedefgh", "xyzDEFghijabc"]) == [6, 5, 7]
puts solve(["encode", "abc", "xyzD", "ABmD"]) == [1, 3, 1, 3]
# All test cases return `true`.



## Solution:
def solve(arr)
  alphabet = ('a'..'z').to_a

  arr.map do |word|
    count = 0
    word.each_char.with_index do |_, idx|
      count += 1 if word[idx].downcase == alphabet[idx]
    end
    count
  end
end

puts solve(["abode", "ABc", "xyzD"]) == [4, 3, 1]
puts solve(["abide", "ABc", "xyz"]) == [4, 3, 0]
puts solve(["IAMDEFANDJKL", "thedefgh", "xyzDEFghijabc"]) == [6, 5, 7]
puts solve(["encode", "abc", "xyzD", "ABmD"]) == [1, 3, 1, 3]
# All test cases return `true`.



## Alternative 1:

