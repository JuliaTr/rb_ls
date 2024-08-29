=begin

PROBLEM
Build a program that randomly generates and prints Teddy's age.
To get the age, you should generate a random number between 20 and 200.
Hint: You may find the rand method useful. It is documented in the Kernel module.

EXAMPLE OUTPUT
Teddy is 69 years old!

______________________________________________________________________

PEDAC

Problem:
  - Input: no
  - Output: an outputted string with interpolated integer object between 20 and 200. 

  - Rules:
    - Explicit: 
      - The program should randomly generate and print age.
      - To get the age, you should generate a random number between 20 and 200.
      - Use `Kernel#rand` method to generate a random number.
      - The argument of `#rand` will be `20..200`.

    - Implicit: 
      - There is no input.

    - Assumptions:
      - No

Examples and Test Case:
  - The example output conform to all rules.

Data Structure:
  - No

Algorithm:
  - Generate an age (`age = rand(20..200)`) (return: integer).
  - Output a string with interpolated the returned Integer object referenced by `age`.
=end

age = rand(20..200)
puts "Teddy is #{age} years old!"
=begin
$ ruby how_old_is_teddy.rb
Teddy is 147 years old!
$ ruby how_old_is_teddy.rb
Teddy is 169 years old!
$ ruby how_old_is_teddy.rb
Teddy is 142 years old!
$ ruby how_old_is_teddy.rb
Teddy is 169 years old!
$ ruby how_old_is_teddy.rb
Teddy is 68 years old!
=end