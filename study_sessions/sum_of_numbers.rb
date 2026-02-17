# to review

=begin
Sum of Numbers
Implement a function that calculates the sum of numbers inside of a string.
Example: "L12aun3ch Sch3oo45l" should output 63.

You can expect that the string will include only positive numbers.


P: return sum of numbers

Rules: 
- work with numbers, not digits

"L 12 aun 3 ch Sch 3 oo 45 l"
12 + 3 + 3 + 45

"HE 2 LL 3 O W 1 OR 5 LD"
"The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"

D
I: str
O: int

High-level:
Temprary str
Loop over str
Check if char is integer
Push integer in temporary string
Count all str of integers (numbers)

Algo:
- Arr
- Temprary str
- Loop over each char in str
  - if char is integer
    - Push integer in temporary string
  - if !temp.empty? AND char NOT integer
    - Push temp str to arr
    - temp = ''
- Convert all str of integers (numbers) into integers
- Sum

=end

## Refactored:
def sum_of_numbers(str)
  arr = []
  temp = ''

  # Append a non-digit to ensure the last number is captured
  (str + ' ').each_char do |char|
    if ('0'..'9').include?(char)
      temp << char
    elsif !temp.empty?
      arr << temp
      temp = ''
    end
  end

  arr.map(&:to_i).sum
end

p sum_of_numbers("HI") == 0
p sum_of_numbers("HE2LL3O W1OR5LD") == 11
p sum_of_numbers("L12aun3ch Sch3ool45") == 63
p sum_of_numbers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
# All test cases return `true`.




## Solution:
def sum_of_numbers(str)
  arr = []
  temp = ''

  str.each_char do |char|
    if char == char.to_i.to_s
      temp << char
    elsif !temp.empty? && char != char.to_i.to_s
      arr << temp
      temp = ''
    end
  end

  arr << temp unless temp.empty?
  arr.map(&:to_i).sum
end

p sum_of_numbers("HI") == 0
p sum_of_numbers("HE2LL3O W1OR5LD") == 11
p sum_of_numbers("L12aun3ch Sch3ool45") == 63
p sum_of_numbers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
# All test cases return `true`.
