# Write a method that takes an array of consecutive letters as 
# input and returns the missing letter.

=begin

PEDAC

P 
Return a missing letter with opposite case.

Rules/reqs:
- if empty input array, return empty array
- characters are ordered in input array
- missing letter is not the last and not the first

D
Input: array
Output: string opposite case
Intermediate:
- string: all alphabetic letters  X
- array: all alpahabetic letters
- range: all alphabetic letters   X
- integer: subarray
- boolean: check case

High-level:
- Create `alphabet`
- If input array is empty, return empty array
- Create a subarray from alphabet starting from letter from input array and
  upto letter from ending input array
- Check if each char from alphabet subarray is included in array.
- If a char is missing check its case and return it in opposite case

eg.
'abcdefghijklmnopqrstuvwxyz'
['a','b','c','d','f']
                  ^

=end

ALPHABET = ('a'..'z').to_a

def alphabet_subarray(arr)
  subarray = nil

  0.upto(ALPHABET.size - 1) do |index|
    if ALPHABET[index] == arr[0].downcase
      subarray = ALPHABET[index..index + arr.size]
    end
  end

  subarray
end

def determine_missing_letter(arr)
  return [] if arr == []

  # Create a subarray from alphabet starting from letter from 
  # input array and upto letter from ending input array
  subarray = alphabet_subarray(arr)

  # Check if each char from alphabet subarray is included in array.
  # Find missing char.
  downcased_chars = arr.map(&:downcase)
  missing_letter = subarray.select { |char| !downcased_chars.include?(char) }.join

  # If a char is missing check its case and return it in opposite case.
  arr[0] == arr[0].downcase ? missing_letter.upcase : missing_letter.downcase
end

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
# All test cases print `true`



# Learn from others:
def determine_missing_letter(array)
  return [] if array.empty?

  alphabet = (array[0]..array[-1]).to_a
  p alphabet  # ["a", "b", "c", "d", "e", "f"]
              # ["H", "I", "J", "K", "L"]

  alphabet.select do |letter|
    !array.include?(letter)
  end[0].swapcase
end

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
# All test cases print `true`.
