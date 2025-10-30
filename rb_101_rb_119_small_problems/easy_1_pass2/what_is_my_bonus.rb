=begin
Write a method that takes two arguments, a positive integer 
and a boolean, and calculates the bonus for a given salary. 
If the boolean is `true`, the bonus should be half of the salary. 
If the boolean is `false`, the bonus should be `0`.

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


____________________________________________________________

PEDAC (part)

High-level:
- Chaeck if boolean is `true`. 
- If yes, half a salary and return the result.
- If not, return `0`
=end

def calculate_bonus(number, bool)
  bool ? (number / 2) : 0
end

puts calculate_bonus(2800, true) == 1400     # true
puts calculate_bonus(1000, false) == 0       # true
puts calculate_bonus(50000, true) == 25000   # true
