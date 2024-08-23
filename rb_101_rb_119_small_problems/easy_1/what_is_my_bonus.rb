=begin

PROBLEM

Write a method that takes two arguments, a positive integer and a boolean,
and calculates the bonus for a given salary.
If the boolean is `true`, the bonus should be half of the salary. 
If the boolean is `false`, the bonus should be `0`.
The test below should print `true`.

TEST CASES

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_binus(50000, true) == 25000

_________________________________________________________________________

PEDAC

Problem:
  - Input: an integer object and a boolean object
  - Output: an integer object

  - Rules:
    - Explicit: 
      - As an INPUT an integer should be positive
      - If the boolean is `true`, the bonus should be half of the salary
      - If the boolean is `false`, the bonus should be `0`
    
      - Implicit:
        - Return a new integer
        - Return integer, not output or print

Examples and Test Cases:
  - All test cases included the stated rules

Data Structure:
  - No

Algorithm:
  - Define a method called `calculate_bonus` that has two arguments `salary` and `positive_bool`
  - Use a flow control to calculate a bonus:
    - If the boolean is `true`, the bonus should be half of the salary
    - If the boolean is `false`, the bonus should be `0`
=end

def calculate_bonus(salary, positive_bool)
  positive_bool ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000