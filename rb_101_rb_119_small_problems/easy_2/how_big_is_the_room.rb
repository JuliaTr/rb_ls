=begin

PROBLEM
Build a program that asks a user for the length and width
of a room in meters and then displays the area of the room 
in both square meters and square feet.
Note: 1 square meter == 10.7639 square feet
Do not worry about validating the input at this time.

EXAMPLE RUN
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

________________________________________________________________

PEDAC

Problem
  - Input: A string object.
  - Output: A string with interpolated integer object.

  - Rules:
    - Explicit: 
      - Should ask a user for the length and width of a room in meters.
      - Should display the area of the room in both square meters and square feet.
      - The calculation of square feet is given in the problem.
      - The input validation is not required.

    - Implicit:
      - The program should handle integers and floats as an INPUT.
      - The user INPUT should be converted to float for further calculation.

    - Assumption:
      - The INPUT will be a positive number.
      - The INPUT will be greater than 0.

Examples and Test Cases:
  - All examples conform to the rules.

Data Structure:
  - No

Algorithm:
  - Ask the user "Enter the length of the room in meters:"                    # DONE
  - Assign the INPUT answer to the variable `length` (return: string)         # DONE
  - Ask the user "Enter the width of the room in meters:"                     # DONE
  - Assign the INPUT answer to the variable `width` (return: string)          # DONE
  - Convert the INPUT to float (return: float)                                # DONE
  - Calculate the area of the room in the squre meters 
    `square_meters = length * width` (return: float)                          # DONE
  - Calculate the area in square feet `squre_feet = square_meters * 10.7639`
    (return: float)                                                           # DONE
  - Interpolate the return value of `square_meters` and `square_feet` into
    the string given in the example run.                                      # DONE
=end

puts ">> Enter the length of the room in meters:"
length = gets.chomp.to_f
puts ">> Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = length * width
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet.round(2)} square feet)."
=begin
>> Enter the length of the room in meters:
10
>> Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end


## Solution from the exercise:
SQMETERS_TO_SQFEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.to_f

puts 'Enter the width of the room in meters:'
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{square_feet} square feet)."

