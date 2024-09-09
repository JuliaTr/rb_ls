=begin

PROBLEM
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product
of all numbers between 1 and the entered integer.

EXAMPLES
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

_____________________________________________________________

PEDAC

Problem:
  - Input: A string object with an integer vqalue.
  - Output: A string with interpolated return values of the sum or product.

  - Rules:
    - Explicit:
      - An integer greater than 0 should be entered as an INPUT.
      - The program should ask if the user wants to determine the sum or product.
      - The sum or the product should be of all numbers between 1 and the entered integer.

      - Implicit:
        - To compute the sum the user should press 's'.
        - To compute the productt the user should press 'p'.

  - Assumptions:
    - Only integers should be entered, not floats.

Examples and Test Cases:
  - All examples conform to the rules.

Data Structure:
  - Array (?)
  - Strings
  - Integers

Algorithm:
  - Prompt the user.
  - Convert the result value of an INPUT, assigned
    to the variable, to an integer. (return: integer)
  - Compute the sum of all numbers between 1 and
      the entered integer. (return: integer)
  - Compute the product of all numbers between 1 and
      the entered integer. (return: integer)
  - Ask the user to enter 's' to compute the sum or
    'p' to compute the product.
  - If the INPUT 's'
    - Return the sum.
  -If the INPUT 'p'
    - Return the product.
  - A string with a returned value of sum or product should be returned.
=end

puts ">> Please enter an integer greater than 0:"
answer = gets.to_i

# Compute the sum of all numbers between 1 and the entered integer.
number = answer
array = []
loop do
  array << number
  number -= 1
  break if number == 0
end

sum = array.sum

=begin
# or
sum = 0
array.each do |element|
  sum += element
end
p sum
=end

# Compute the product of all numbers between 1 and the entered integer.
product = 1
array.each do |element|
  product *= element
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

case choice
when 's'
  puts "The sum of the integers between 1 and #{answer} is #{sum}."
when 'p' 
  puts "The product of the integers between 1 and #{answer} is #{product}."
end

=begin

Program Run:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end



## Further exploration:

# To compute sum with `Enumerable#inject`:
puts ">> Please enter an integer greater than 0:"
answer = gets.to_i

sum = (1..answer).inject(:+)
p sum

# To compute product with `Enumerable#inject`:
puts ">> Please enter an integer greater than 0:"
answer = gets.to_i

product = (1..answer).inject(:*)
p product
