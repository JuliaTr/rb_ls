=begin

PROBLEM
Write a program that prompts the user for two positive 
integers, and then prints the results of the following 
operations on those two numbers: addition, subtraction, 
product, quotient, remainder, and power. Do not worry 
about validating the input.

EXAMPLE
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

________________________________________________________

PEDAC

Problem:
  - Input: 2 integer objects.
  - Output: An string outputting 2 integers and the result 
    of operation with them.

  - Rules:
    - Explicit: 
      - Prompts the user for two positive integers.
      - Print the results of the following operations 
        on those two numbers: addition, subtraction, 
        product, quotient, remainder, and power.
      - Validation of input is not needed.

    - Implicit:
      - The whole operation should be printed.
      
  - Assumptions:

Examples and Test Cases:
  - A provided example conforms to the rules.

Data Structure:
  - Work will be done only with integers and strings

Algorithm:
  - Ask a user to enter the first number.
  - Assign the INPUT to a variable `first_number`.
  - Ask a user to enter the second number.
  - Assign the INPUT to the variable `first_number`.
  - Calculate addition, subtraction, product, quotient, 
    remainder, and power.
  - Output the calculation and its result.
=end

puts "==> Enter the first number:"
first_number = gets.chomp.to_i
puts "==> Enter the second number:"
second_number = gets.chomp.to_i

addition = first_number + second_number
puts "==> #{first_number} + #{second_number} = #{addition}"

subtraction = first_number - second_number
puts "==> #{first_number} - #{second_number} = #{subtraction}"

product = first_number * second_number
puts "==> #{first_number} * #{second_number} = #{product}"

quotient = first_number / second_number
puts "==> #{first_number} / #{second_number} = #{quotient}"

remainder = first_number % second_number
puts "==> #{first_number} % #{second_number} = #{remainder}"

power = first_number ** second_number
puts "==> #{first_number} ** #{second_number} = #{power}"
=begin
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
=end


