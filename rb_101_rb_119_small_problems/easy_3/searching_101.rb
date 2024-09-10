=begin

PROBLEM
Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 
6th number appears amongst the first 5 numbers.

EXAMPLE
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

______________________________________________________

PEDAC

Problem:
  - Input: Integer objects.
  - Output: 
    - A string with interpolated an array of 5 
      inputed Integer objects.

  - Rules:
    - Explicit:
      - A message should describe whether or not the 
        6th number appears amongst the first 5 numbers.
    - Implicit:
      - If there are 2 equal numbers and one of them the 6th,
        the user should be informed if it appers in an array.
      - If the last number is unique, the user should be 
        informed that it doesn't apper in an array.

  - Assumptions:
    - No

Examples and Test Cases:
  - All examples conform to the rules.

Data Structure:
  - Array

Algorithm:
  - Ask a user 6 times to enter a number.
  - Assign the input to a variable.
  - Store the 6 numbers to the array.
  - Check if the last number is already appears in the array.
  - Output a message to the user.
=end

array = []
counter = 0
array_for_text = ['1st', '2nd', '3rd', '4th', '5th', 'last']
loop do
  puts "==> Enter the #{array_for_text[counter]} number:"
  number = gets.chomp.to_i

  array <<  number
  counter += 1
  break if counter == 6
end

popped_element = array.pop

result = array.any?(popped_element)

if result
  puts "The number #{popped_element} appears in #{array}."
else
  puts "The number #{popped_element} does not appear in #{array}."
end
