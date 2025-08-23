=begin
PROBLEM:
Write a method that takes two strings as arguments, 
determines the longest of the two strings, and then 
returns the result of concatenating the shorter string, 
the longer string, and the shorter string once again. 
You may assume that the strings are of different 
lengths.

EXAMPLES:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

__________________________________________________
PEDAC:
Rules:
- The strings are of different lengths
- If one of the strings is empty, return the one, which 
  isn't empty 
  (ex: `short_long_short('', 'xyz') == "xyz"`)

High-level:
- determine the longest of the two strings
- return the result of concatenating the shorter string,
  the longe string, and the shorter string
=end

## Solution
def short_long_short(str1, str2)
  return str2 if str1.empty?
  return str1 if str2.empty?

  if str1.size < str2.size
    str1 + str2 + str1
  elsif str2.size < str1.size
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"  # true
p short_long_short('abcde', 'fgh') == "fghabcdefgh"  # true
p short_long_short('', 'xyz') == "xyz"               # true



## Experiments:
p '' + 'hello' + ''   # "hello"
