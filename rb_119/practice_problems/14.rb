# took 16 mins

=begin
Create a method that takes a single integer argument and returns 
the sum of all the multiples of 7 or 11 that are less than the 
argument. If a number is a multiple of both 7 and 11, count it 
just once.

For example, the multiples of 7 and 11 that are below 25 are 
7, 11, 14, 21, and 22. The sum of these multiples is 75.

If the argument is negative, return 0.

P
Return sum of all multiples of 7 or 11 below the argument

Rules:
- 0 -> 0
- negative -> 0
- count once if divisible by 7 or 11

D
Input: integer
Output: integer

High-level:
- Create range from 1 to argument
- Create `result` empty array
- Check every integer if divisible by 7 or 11. If yes, add to `result`.
- Calculate sum of `result`. Return it.

Intermediate:
- range
- array for result

=end

def multiples(number)
  result = []
  (1...number).each do |element|
    result << element if (element % 7).zero? || (element % 11).zero?
  end
  result
end

def seven_eleven(number)
  return 0 if number <= 0
  multiples = multiples(number)
  multiples.sum
end

p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0
