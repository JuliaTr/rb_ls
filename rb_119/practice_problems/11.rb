=begin
Create a method that takes a nonempty string as an argument and 
returns an array consisting of a string and an integer. If we 
call the string argument s, the string component of the returned 
array t, and the integer component of the returned array k, 
then s, t, and k must be related to each other such that s == t * k. The values of t and k should be the shortest possible substring and the largest possible repeat count that satisfies this equation.

You may assume that the string argument consists entirely of 
lowercase alphabetic letters.

P
Return array with shortest substring and number of times this string 
constitutes input string

Reules:
- `'aaaaaaaa'` - shortest substring `'a'`
- no substrings -> this string and 1

D
Input: string
Output: array of string and integer


High-level:
- If unique input string is 1 element, then return `[unique string, 1]`
- Genereate all subsequent substrings 
  ["x", "xy", "xyz"....]
- Check if substring constitutes input string
  - Find multiples of input string size
   'xyzxyzxyz' 9 (3, 1)
   'xyxy'  4 (2, 1)
   'xyz'   3 (1)
   'aaaaaaaa'   8 (2, 4, 1)


Genereate all subsequent substrings:
  ["x", "xy", "xyz"....]
Input: string
Output: nested array of substrings
#each_char


For each substring:
  - Find multiples of input string size
   'xyzxyzxyz' 9 (3, 1)
   'xyxy'  4 (2, 1)
   'xyz'   3 (1)
   'aaaaaaaa'   8 (2, 4, 1)
  - Check if substring constitutes input string

Input: nested array
Output: array (string, integer)
Intermediate: 
- boolean: if multiple
=end

## Alternative:
def substrings(str)
  result = []
  str.each_char.with_index do |_, index|
    result << str[0..index]
  end
  result
end

def repeated_substring(str)
  substrings = substrings(str)

  substrings.each do |substring|
    multiplier = str.length / substring.length
    # Check if repeating the substring equals the original string
    return [substring, multiplier] if substring * multiplier == str
  end
end

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
# All test cases return `true`



## Solution:
def substrings(str)
  result = []
  str.each_char.with_index do |_, index|
    result << str[0..index]
  end
  result
end

def repeated_substring(str)
  return [str[0], str.size] if str.chars.uniq.size == 1

  substrings = substrings(str)

  substrings.each do |substring|
    multiplier = 1
    (str.size - 1).times do
      if (str.size % multiplier).zero? && 
          substring * multiplier == str
        return [substring, multiplier]
      end
      multiplier += 1
    end
  end
end

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
# All test cases return `true`
