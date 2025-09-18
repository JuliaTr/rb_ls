=begin
Write a method that computes the difference between the 
square of the sum of the first n positive integers and the 
sum of the squares of the first n positive integers.

__________________________________________________________

Notes: 
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
   1 + 2 + 3 = 6
   6**2 = 36

   1**2 = 1
   2**2 = 4
   3**2 = 9
=end

def sum_square_difference(number)
  arr = []
  while number > 0
    whole, remainder = number.divmod(1)
    arr.prepend(whole)
    number -= 1
  end

  sum_to_power = arr.sum**2
  numbers_to_power = arr.map { |number| number**2 }
  sum_of_numbers_to_power = numbers_to_power.sum
  sum_to_power - sum_of_numbers_to_power
end

p sum_square_difference(3) == 22              # true
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640           # true
p sum_square_difference(1) == 0               # true
p sum_square_difference(100) == 25164150      # true



## Possible solutions:
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22              # true
p sum_square_difference(10) == 2640           # true
p sum_square_difference(1) == 0               # true
p sum_square_difference(100) == 25164150      # true
