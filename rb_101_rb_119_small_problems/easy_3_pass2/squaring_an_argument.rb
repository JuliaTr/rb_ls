=begin
Using the multiply method from the "Multiplying Two Numbers" 
problem, write a method that computes the square of its 
argument (the square is the result of multiplying a number by 
itself).

Example:
square(5) == 25
square(-8) == 64
=end

def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

p square(5) == 25    # true
p square(-8) == 64   # true



## Further exploration:
=begin
Write a generic method to a "power to the n" type method: cubed, to 
the 4th power, to the 5th, etc. Use `multiply` method?
=end


## Solution:
def multiply(number1, number2)
  number1 * number2
end

def cubed(number, power_to_n)
  cubed_number = multiply(number, number)

  while (power_to_n - 2) > 0
    cubed_number = cubed_number * number
    power_to_n -= 1
  end

  cubed_number
end

p cubed(5, 4) == 625      # true
p cubed(-8, 5) == 32768   # true



## Experiments:
cubed_number = 5 * 5
cubed_number = cubed_number * 5
cubed_number = cubed_number * 5
p cubed_number   # 625 (as expected)

cubed_number = 8 * 8
cubed_number = cubed_number * 8
cubed_number = cubed_number * 8
cubed_number = cubed_number * 8
p cubed_number  # 32768 (as expected)
