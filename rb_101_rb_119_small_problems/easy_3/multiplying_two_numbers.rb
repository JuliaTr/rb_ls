=begin

PROBLEM
Create a method that takes two arguments, multiplies them together, 
and returns the result.

EXAMPLE
multiply(5, 3) == 15

___________________________________________________________________

PEDAC

Problem: 
  - Input: Two Integer objects.
  - Output: An Integer object.

  - Rules:
    - Explicit: 
      - INPUT objects should be multiplied inside a defined method.
      - The result should be returned, not outputed or printed.

    - Implicit:
      - It should be positive Integer objects.

  - Assumptions: No

Examles and Test Case:
  - A provided example conform to the rules.

Data Structure:
  - The work will bw done with integers.

Algorithm:
  - Define a method called `multiply` which takes two arguments.
  - Multiply two arguments and return the result.
=end

def multiply(number1, number2)
  number1 * number2
end

p multiply(5, 3) == 15  # true


## Further exploration:
def multiply(number1, number2)
  number1 * number2
end

p multiply([1, 2, 3], 3)  # [1, 2, 3, 1, 2, 3, 1, 2, 3]
