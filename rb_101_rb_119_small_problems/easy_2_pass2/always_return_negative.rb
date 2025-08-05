=begin
Write a method that takes a number as an argument. If 
the argument is a positive number, return the negative 
of that number. If the number is 0 or negative, return 
the original number.

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in Ruby
=end

## Solution:
def negative(number)
  if number > 0
    number - 10
  elsif number < 0 || number == 0
    number
  end
end

puts negative(5) == -5    # true
puts negative(-3) == -3   # true
puts negative(0) == 0     # true



## Possible solution:
def negative(number)
  number > 0 ? -number : number
end

puts negative(5) == -5    # true
puts negative(-3) == -3   # true
puts negative(0) == 0     # true



## Further exploration:
def negative(number)
  -number.abs
end

puts negative(5) == -5    # true
# 5.abs  # 5
# -5

puts negative(-3) == -3   # true
# -3.abs  # 3
# -3

puts negative(0) == 0     # true
# 0.abs  # 0
# -0     # 0
