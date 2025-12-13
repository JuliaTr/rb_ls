# took 15 mins

=begin
Create a method that takes a nonempty string as an argument and 
returns an array consisting of a string and an integer. If we 
call the string argument s, the string component of the returned 
array t, and the integer component of the returned array k, 
then s, t, and k must be related to each other such that s == t * k. 
The values of t and k should be the shortest possible substring 
and the largest possible repeat count that satisfies this equation.

You may assume that the string argument consists entirely of 
lowercase alphabetic letters.

____________________________________________________________

'xyzxyzxyz'  9    ['xyz', 3]
'xyxy'       4    ['xy', 2]

'aaaaaaaa'   8

'xyz'        3
'superduper' 10

- If string with unique characters is the same as input
  - return [input, 1]
- If string with unique characters is 1-element size
  - return [first element, string size]

- Generate substrings
- Iterate over each substring
  - Calculate multiplier (string size / substring size)
  - If multiplier * substring SAME as input string
    - Return [substring, multiplier]
- Sort by value
=end

def substrings(str)
  result = []
  str.each_char.with_index do |_, index1|
    result << str[0..index1]
  end
  result
end

def repeated_substring(str)
  substrings(str).each do |substring|
    multiplier = str.size / substring.size
    return [substring, multiplier] if substring * multiplier == str
  end
end

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
# All test cases return `true`
