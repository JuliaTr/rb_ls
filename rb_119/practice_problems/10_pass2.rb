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
      number = str[first..second].to_i

      count += 1 if (number % 2).zero?
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




## Alternative
# without nested loop
=begin
Logic:
- Every substring that ends at an even digit is an even number.
- At index `idx`, if the digit is even, there are exactly `idx + 1` such substrings.
- Therefore we do `count += idx + 1`, when ever `char.to_i.even?`
=end
def even_substrings(str)
  count = 0

  str.each_char.with_index do |char, idx|
    digit = char.to_i
    count += idx + 1 if digit.even?
  end

  count
end

p even_substrings('1432') == 6
=begin
Break down:
Iteration 1:
digit = 1
idx  => 0

Iteration 2:
digit = 4
idx  => 1
2 = 1 + 1
....


At `idx = 3` (character '2'):
Substrings ending here:
- str[0..3] -> '1432'
- str[1..3] -> '432'
- str[2..3] -> '32'
- str[3..3] -> '2'
That's 4 substrings, and `3 + 1 == 4`
=end

p even_substrings('3145926') == 16
=begin
'314'
At `idx = 2` (character '4'):
Substrings ending here:
- str[0..2] -> '314'
- str[1..2] -> '14'
- str[2..2] -> '4'
That's 3 substrings, and `2 + 1 == 3`

'314592'
At `idx = 5` (character '2'):
Substrings ending here:
- str[0..5] -> '314592'
- str[1..5] -> '14592'
- str[2..5] -> '4592'
- str[3..5] -> '592'
- str[4..5] -> '92'
- str[5..5] -> '2'
That's 6 substrings, and `5 + 1 == 6`
=end

p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12
# All test cases return `true`




## Experiments
str = 'abcd'
str.each_char.with_index do |char, idx|
  substrings = (0..idx).map { |start| str[start..idx] }
  puts "idx=#{idx}, char=#{char}, substrings=#{substrings.inspect}, count=#{idx + 1}"
end

=begin
idx=0, char=a, substrings=["a"], count=1
idx=1, char=b, substrings=["ab", "b"], count=2
idx=2, char=c, substrings=["abc", "bc", "c"], count=3
idx=3, char=d, substrings=["abcd", "bcd", "cd", "d"], count=4
=end
