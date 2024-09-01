=begin

PROBLEM
Build a program that displays when the user will retire 
and how many years she has to work till retirement.
Use the Time class from the Ruby core library.

EXAMPLE
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

_________________________________________________________

PEDAC

Problem:
  - Input: 2 integer objects
  - Output:
    - 2 strings with interpolated the returned integer
      objects for the year now, year at the age the user would like to retire,
      how many years left to work.

  - Rules:
    - Explicit:
      - Should displays when the user will retire and how
        many years she has to work till retirement.
      - Use the Time class from the Ruby core library.

    - Implicit:
      - The user INPUT should be shouwn on the same line as the prompt.
      - The INPUT should be a positive integer.
      - The INPUT should be greater than 0.
      - The return values should be integers.
      - The program should work for years in the future.

    - Assumptions:
      - The year now will be a valid year number.
      - We're using the Gregorian calendar system.

Examples and Test Cases:
  - The examples conform to the rules. 
Data Structure:
  - No

Algorithm:
  - Initialize a `TIMENOW` constant            # DONE
  - Initialize a `YEARNOW` constant            # DONE
  - Ask the user "What is your age?"                                                              
  - Assign the INPUT answer to the variable `age` (return: string).
  - Ask the user "At what age would you like to retire?".
  - Assign the INPUT answer to the variable `retire_age` (return: string).
  - Convert the return value of `age` and `retire_age` into integer
    (return integer for each).
  - Calculate how many years left to work (return: integer).  
  - Calculate the year of retirement (return: integer).
  - Display a string with a `YEARNOW`.
  - Display a string with the year of the retirement.
  - Display a string with how many years left to work.
=end

TIMENOW = Time.new
YEARNOW = TIMENOW.year

print "What is your age? "
age = gets.to_i

print "At what age would you like to retire? "
retire_age = gets.to_i

years_to_work = retire_age - age
retire_year = YEARNOW + years_to_work

puts
puts "It's #{YEARNOW}. You will retire in #{retire_year}."
puts "You have only #{years_to_work} years of work to go!"
=begin
What is your age? 30
At what age would you like to retire? 70

It's 2024. You will retire in 2064.
You have only 40 years of work to go!
=end


## From the solution in the exercise:

current_year = Time.now.year
work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go