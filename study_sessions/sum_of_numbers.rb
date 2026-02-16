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

def sumOfNumbers(str)
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

p sumOfNumbers("HI") == 0
p sumOfNumbers("HE2LL3O W1OR5LD") == 11
p sumOfNumbers("L12aun3ch Sch3ool45") == 63
p sumOfNumbers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
# All test cases return `true`.
