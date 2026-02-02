=begin
Create a method that takes a string of digits as an argument 
and returns the number of even-numbered substrings that can be 
formed. For example, in the case of '1432', the even-numbered 
substrings are '14', '1432', '4', '432', '32', and '2', for a 
total of 6 substrings.

If a substring occurs more than once, you should count each 
occurrence as a separate substring.

High-level:
- Find all substrings
- Identify which number is even
- Count

Find all substrings
'1432' (`first`) 0
 ^
  '1432' (`second`) 0? 1? `first`? `first + 1`
   ^

["1", "14", "143", "1432"
"4", "43", "432"
"3", "32"
"2"]


Identify which number is even
["14", "1432", "4", "432", "32", "2"]

'14', '1432', '4', '432', '32','2'
=end

## Solution:
def even_substrings(str)
  count = 0

  str.each_char.with_index do |_, first|
    first.upto(str.size - 1) do |second|
      substring = str[first..second].to_i

      count += 1 if (substring % 2).zero?
    end
  end

  count
end

p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12
# All test cases return `true`