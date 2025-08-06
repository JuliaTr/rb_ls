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
p square(-8) == 64   # true  (-8 * -8 = 64)



## Further exploration:
=begin
Write a generic method to a "power to the n" type method: cubed, to 
the 4th power, to the 5th, etc. Use `multiply` method?
=end

### Simplified logic:
def multiply(number1, number2)
  number1 * number2
end

def power_to_n(number, n)
  result = 1

  while n > 0
    result = multiply(result, number)
    n -= 1
  end

  result
end

p power_to_n(5, 4) == 625       # true
p power_to_n(-8, 5) == -32768   # true
p power_to_n(4, 1) == 4         # true
p power_to_n(3, 0) == 1         # true

=begin
Logic break down for `number = 5`,  `n = 4`:
result = 1

Iteration 1:
while 4 > 0
  5 = 1 * 5 (result)
  3 = 4 - 1
end

Iteration 2:
while 3 > 0
  25 = 5 * 5
  2 = 3 - 1
end

Iteration 3:
while 2 > 0
  125 = 25 * 5
  1 = 2 - 1
end

Iteration 4:
while 1 > 0
  625 = 125 * 5
  0 = 1 - 1
end

625 (result)



Logic break down for `number = 4`,  `n = 1`:
result = 1

Iteration 1:
while 1 > 0
  4 = 1 * 4 (result)
  0 = 1 - 1
end

4 (result)



Logic break down for `number = 3`,  `n = 0`:
result = 1

Iteration 1:
while 0 > 0  (false)
end

1 (result)
=end



### Improved solution with edge cases:
def multiply(number1, number2)
  number1 * number2
end

def power_to_n(number, n)
  case n
  when 0 then 1
  when 1 then number
  else
    power = multiply(number, number)

    while (n - 2) > 0
      power = multiply(power, number)
      n -= 1
    end

    power
  end
end

p power_to_n(5, 4) == 625       # true
p power_to_n(-8, 5) == -32768   # true
p power_to_n(4, 1) == 4         # true
p power_to_n(3, 0) == 1         # true



### Solution:
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

p cubed(5, 4) == 625       # true
p cubed(-8, 5) == -32768   # true



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
