# took 16 mins

=begin
Create a method that takes a string of digits as an argument and 
returns the number of even-numbered substrings that can be 
formed. For example, in the case of `'1432'`, the even-numbered 
substrings are `'14'`, `'1432'`, `'4'`, `'432'`, `'32'`, and 
`'2'`, for a total of 6 substrings.

If a substring occurs more than once, you should count each 
occurrence as a separate substring.

P
Return a number of even-numbered substrings

Rules:
- even-numbered substrings

D
Input: string
Output: integer (count)
Intermediate:
- array: store substrings
- hash: for count
- integer: count
- integer: iteration
- range: iteration
- boolean: check if substring is even-numbered


High-level:
Idea1:
- Generate all consecutive substrings
- Find occurences of even-numbered strings

Idea2:
- Generate all consecutive substrings
- Use count to increment when counting even-numbered substrings

Generate all consecutive substrings:

'1432'
  ^
  '1432'
     ^
str[first..second]
"1", "14", "143", "1432"...
"4", "43"...

Use count to increment when counting even-numbered substrings
- Create `count`, set to 0
- Iterate over each element (substring) of substrings (`substring`)
  - If string last character converted to integer is even
    - Increment `count` by 1
- Return `count`
=end

def substrings(str)
  result = []
  str.each_char.with_index do |_, first|
    first.upto(str.size - 1) do |second|
      result << str[first..second]
    end
  end
  result
end

def even_substrings(str)
  substrings = substrings(str)

  count = 0
  substrings.each do |substring|
    count += 1 if substring[-1].to_i.even?
  end
  count
end

p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12
# All test cases return `true`.
