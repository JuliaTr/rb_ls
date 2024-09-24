=begin

PROBLEM
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument (the square 
is the result of multiplying a number by itself).

TEST CASES:
square(5) == 25
square(-8) == 64

_____________________________________________________________________

PEDAC

Problem: 
  - Input: An Integer object.
  - Output: An Integer object.

  - Rules:
    - Explicit; 
      - A metthod should compute the square of its argument (the square 
        is the result of multiplying a number by itself).
    - Implicit: 
      - An input can be a positive and a negative integer.

Examples and Test Cases:
  - All test cases conform to the rules

Data Structure:
  - The work will be conducted with integers

Algorithm:
  - Define a method called `square`which takes one parameter.
  - Multiply the INPUT on itself.
=end

def square(number)
  number *= number    # number = number * number
end

p square(5) == 25     # true
p square(-8) == 64    # true



## Further exploration
# Cubed:
def multiply(number1, number2)
  number1 * number2
end

def cubed(n)
  multiply(n, n) * n
end
p cubed(5) == 125     # true


# to the 4th power:
def multiply(number1, number2)
  number1 * number2
end

def to_4th_power(n)
  multiply(n, n) * multiply(n, n)
end

p to_4th_power(5) == 625  # true



# to the 5th power:
def multiply(number1, number2)
  number1 * number2
end

def to_5th_power(n)
  multiply(n, n) * multiply(n, n) * n
end

p to_5th_power(5) == 3125   # true