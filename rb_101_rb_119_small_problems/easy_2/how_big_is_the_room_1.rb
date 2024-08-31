=begin

PROBLEM
Build a program that asks a user for the length and width
of a room in feet and then displays the area of the room 
in both square feet, square inches and square centimeters.
Do not worry about validating the input at this time.
1 square foot == 144 square inches
1 square foot == 929.0304 square centimeters

EXAMPLE
>> Enter the length of the room in feet:
50
>> Enter the width of the room in feet:
20
>> The area of the room is 1000.0 square feet (144000.0 square inches or 929030.4 in square centimeters).

__________________________________________________________

PEDAC

Problem:
  - Input: A string object.
  - Output: A string object with interpolated integer object.

  - Rules:
    - Explicit:
      - Should ask a user for the length and width of a room in feet.
      - Should display the area of the room in both square feet, square inches, and square centimeters.
      - The calculation of square feet is given in the problem.
      - The input validation is not required.

    - Implicit:
      - The program should handle integers and floats as an INPUT.
      - The user INPUT should be converted to float for further calculation.
    
    - Assumptions:
      - The INPUT will be a positive number.
      - The INPUT will be greater than 0.

Examples and Test Case:
  - All examples conform to the rules.

Data Structure:
  - No

Algorithm:
  - Initialize `SQINCHES` and `SQCENTIMETERS` constants                                             # DONE
  - Ask the user "Enter the length of the room in feet:"                                            # DONE                  
  - Assign the INPUT answer to the variable `length` (return: string)                               # DONE        
  - Ask the user "Enter the width of the room in feet:"                                             # DONE                  
  - Assign the INPUT answer to the variable `width` (return: string)                                # DONE        
  - Convert the INPUT to float (return: float)                                                      # DONE                           
  - Calculate the area of the room in square feet                                                   # DONE
    `square_feet = length * width` (return: float)                          
  - Calculate the area in square inches `squre_inches = square_feet * SQINCHES`                     # DONE
    (return: float)
  - Calculate the area in square centimeters                                                        # DONE
    `square_centimeters = square_feet * SQCENTIMETERS` (return: float)                                                           
  - Interpolate the return value of `square_feet`, `square_inches` and                              # DONE
    `square_centimeters` into the string given in the example.                                      
=end

SQINCHES = 144
SQCENTIMETERS = 929.0304

puts ">> Enter the length of the room in feet:"
length = gets.to_f

puts ">> Enter the width of the room in feet:"
width = gets.to_f

square_feet = length * width
square_inches = square_feet * SQINCHES
square_centimeters = square_feet * SQCENTIMETERS

puts ">> The area of the room is #{square_feet} square feet " + \
     "(#{square_inches} square inches or #{square_centimeters} in square centimeters)."
=begin
>> Enter the length of the room in feet:
50
>> Enter the width of the room in feet:
20
>> The area of the room is 1000.0 square feet (144000.0 square inches or 929030.4 in square centimeters).
=end
