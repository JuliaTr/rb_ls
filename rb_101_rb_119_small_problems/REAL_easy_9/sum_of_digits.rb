=begin
Write a method that takes one argument, a positive integer, 
and returns the sum of its digits.
=end

def sum(number)
  number.to_s.chars.map { |char| char.to_i }.sum
end

puts sum(23) == 5             # true
puts sum(496) == 19           # true
puts sum(123_456_789) == 45   # true



## Possible solution:
# Option 1:
def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

puts sum(23) == 5             # true
puts sum(496) == 19           # true
puts sum(123_456_789) == 45   # true


# Option 2:
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5             # true
puts sum(496) == 19           # true
puts sum(123_456_789) == 45   # true
