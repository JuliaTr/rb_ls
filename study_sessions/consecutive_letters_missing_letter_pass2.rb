=begin
Write a method that takes an array of consecutive letters as input and 
returns the missing letter.


puts determine_missing_letter(['a','b','c','d',|'f']) == 'E'
puts determine_missing_letter(['o',| 'q','r','s']) == 'P'
puts determine_missing_letter(['H',| 'J','K','L']) == 'i'
puts determine_missing_letter([]) == []

Rules:
- return missing letter of opposite case
- Return empty [] if empty

Idea1:
- Create alphabet
- Generate consecutive subarrays
- Compare consecutive subarray with input subarray based on first letter.

algo:
- Return empty [] if empty
- Create alphabet
- Generate consecutive subarrays (helper)
Input: arrays of strings
Output: nested array

[["a", "b", "c", "d", "e", "f"] "g", ["h", "i", "j", "k", "l"], "m", "n", ["o", "p", "q", "r", "s"], "t", "u", "v", "w", "x", "y", "z"]

["a", "b", "c", "d", "e", "f"] 
['a','b','c','d','f']


- Loop over indexes 0 to alphabet size - 1 (`index1`)
  - Loop over indexes from 0 to alphabet size - 1 (`index2`)
     - if alphabet[index1] == arr[0] downcased && 
          alphabet[index2] == arr.last downcased
        - return alphabet[index1..index2] # ["a", "b", "c", "d", "e", "f"] 

=end

## Alternative 
# 

## Refactored:
def find_subarray(alphabet, arr_downcased)
  0.upto(alphabet.size - 1) do |index1|
    0.upto(alphabet.size - 1) do |index2|
      if alphabet[index1] == arr_downcased[0] &&
          alphabet[index2] == arr_downcased.last
        return alphabet[index1..index2]
      end
    end
  end
end

def find_missing_char(subarray, arr_downcased)
  subarray.each do |char|
    return char unless arr_downcased.include?(char)
  end
end

def determine_missing_letter(arr)
  return [] if arr.empty?

  alphabet = ('a'..'z').to_a
  arr_downcased = arr.map(&:downcase)

  subarray = find_subarray(alphabet, arr_downcased)
  char_missing = find_missing_char(subarray, arr_downcased)

  arr.all? { |char| char == char.downcase } ? char_missing.upcase : char_missing.downcase 
end

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
# All test cases return `true`.




## Solution:
def determine_missing_letter(arr)
  return [] if arr.empty?

  alphabet = ('a'..'z').to_a

  subarray = nil
  0.upto(alphabet.size - 1) do |index1|
    0.upto(alphabet.size - 1) do |index2|
      if alphabet[index1] == arr[0].downcase && 
          alphabet[index2] == arr.last.downcase
        subarray = alphabet[index1..index2] # ["a", "b", "c", "d", "e", "f"] 
      end
    end
  end

  char_missing = nil
  subarray.each do |char|
    unless arr.map(&:downcase).include?(char)
      char_missing = char
    end
  end

  arr.all? { |char| char == char.downcase } ? char_missing.upcase : char_missing
end

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
# All test cases return `true`.
