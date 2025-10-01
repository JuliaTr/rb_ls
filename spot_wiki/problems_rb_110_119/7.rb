=begin
Substring fun:
Complete the function that takes an array of words. You must 
concatenate the nth letter from each word to construct a new 
word which should be returned as a string, where `n` is the 
position of the word in the list.

Test cases contain valid input only - i.e. a string array or 
an empty array; and each word will have enough letters.

____________________________________________________________

PEDAC

P 
Return a new string. The index of each character is index of
each string in the array.

Rules/reqs:
- The index of each character is index of each substring in the '
  array.
- If array is empty, return empty string
- Character is case-insensitive
- Return just one string

D
Input: array of strings
Output: new string
Intermediate:
- string from input array - to iterate over
- new string to return

High-level:
- Create a new string
- Iterate over array
  - Iterate over each character of a string
    - Push a character of index the same as index of this string
      to a new string
=end

## Solution:
def nth_char(arr)
  new_str = ''

  arr.each.with_index do |str, str_index|
    str.each_char.with_index do |char, char_index|
      if char_index == str_index
        new_str << char
        break
      end
    end
  end

  new_str
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'
# All test cases return `true`.
