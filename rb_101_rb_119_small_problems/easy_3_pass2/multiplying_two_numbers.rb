=begin
Create a method that takes two arguments, multiplies them together, 
and returns the result.

Example:
multiply(5, 3) == 15
=end

## Solution:
def multiply(number1, number2)
  number1 * number2
end

p multiply(5, 3) == 15   # true


## Experiments:
p 5 * 2            # 10
p "hi" * 2         # "hihi"
p [1, 2, 3] * 2    # [1, 2, 3, 1, 2, 3]

