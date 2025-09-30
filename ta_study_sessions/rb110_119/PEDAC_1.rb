=begin
We're receiving a set of messages in code. The messages are sets of text strings, like:
"alakwnwenvocxzZjsf"
Write a method to decode these strings into numbers. The decoded number should be the number of lowercase characters between the first two uppercase characters. If there aren't two uppercase characters, the number should be 0.


P
Return a new array with numbers. Each string in the input array is represented by a number in the output array. The number is the number of lowercase letters between two the first two uppercase letters.

Rules/Requirements
- if there are not 2 uppercase letters, return 0
- if the string is empty, return 0
- if the input array is empty, return []
- return the number of lowercase letters between the first two uppercase letters
- strings contains alphabetic characters, upper and lower case

D
Input: array/list of strings
Output: array/list of integers
Intermediate:
  - array/list of characters in input string
  - integers - store indexes of the first two uppercase letters
  - hash - {'a': 1, 'b': 3, ...} X
  - range - to store ascii values of uppercase letters

High-level strategies
Yuliia - find which characters are the first two uppercase characters, look to see if and how many lowercase characters there are between them.
  
Alex/Yuliia - create a range of the ascii values of A-Z, iterate through string, check whether each character is uppercase, if uppercase store the index in a new array ([2, 5, 9]), get the first two values in this array of uppercase indexes, find substring equating to this 'UrsC', count downcase letters - by getting the length of the substring and subtracting 2

Alex - use the length of the uppercaseIndexes array to trigger guard clauses

Alex - create a sequential list of substrings, all combinations, filter for those that contain exactly two uppercase letters, filter for those where the uppercase are the start and end, then you need the first one that meets the criteria

Alex - iterate through string, when find first uppercase, 
store it in a new string, keep appending to the new string 
until you get to another uppercase letter, the stop and 
find the number of lowercase letters in the new string

Clare - iterate through the string and store the index of uppercase letters (compare each letter with itself uppercased), then if the stored indexes lengths is < 2, return 0, otherwise return the difference between the first two indexes -1.


Iterate through string, when find first uppercase, 
store it in a new string, keep appending to the new string 
until you get to another uppercase letter, the stop and 
find the number of lowercase letters in the new string.

Yuliia:
- Initialize `substr` local var
- Iterate through the string:
- If `char` is the same as `char.upcase`
  - push to `substr`
- If `substr` isn't empty
  - push next `char`
- Break if end of a string and no second char is found, return 0
- Or break if `char` is the same as `char.upcase`

(efficient, but not so simple and straight forward)

Alternative 1 (learn from other):
- SET UPPER_INDICES = []
- Iterate over the letters of the string:
  - test if the current letter = the uppercase version of itself:
    - if yes, store its index in UPPER_INDICES
    - otherwise, continue
- If length of UPPER_INDICES < 2, return 0
  - otherwise return difference between first 2 indices - 1

Alternative 2 (learn from others):
For each char
    If char is uppercase
        Add 1 to upper_count
            If upper_count equals 2, stop
    Else if previous char is upper_count
        Add 1 to lower_count


Test cases:
p decode(['ZoL', 'heLlo', 'XX']) == [1, 0, 0]
p decode(['foUrsCoreAnd', 'seven', '']) == [2, 0, 0]
p decode(['lucYintheskyWith', 'dIaMonDs']) == [8, 1]
p decode([]) == []
=end
