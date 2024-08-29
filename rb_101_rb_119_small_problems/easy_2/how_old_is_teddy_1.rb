=begin

PROBLEM
Build a program that randomly generates and prints Teddy's age.
To get the age, you should generate a random number between 20 and 200.
Hint: You may find the rand method useful. It is documented in the Kernel module.
Ask for a name, and then print the age for that person. 
For an extra challenge, use "Teddy" as the name if no name is entered.

EXAMPLE OUTPUT
>> Hi! What's your name?
Yuliia
>> Yuliia, you are 69 years old!


>> Hi! What's your name?

>> Teddy, you are 69 years old!

________________________________________________________________________________

PEDAC

Problem:
  - Input: A String object.
  - Output: An outputted string with interpolated String object referenced by INPUT 
    and a randomly generated age.

  - Rules:
    - Explicit: 
      - Name: 
        - An asked name of the user should be an INPUT.
        - Use "Teddy" as the name if no name is entered.
      - Age:
        - The program should randomly generate and print age.
        - To get the age, you should generate a random number between 20 and 200.
        - Use `Kernel#rand` method to generate a random number.
        - The argument of `#rand` will be `20..200`.

    - Implicit:
      - The method should handle multiple words in the string.
      - The string can consist of letters / numbers / symbols.
      - Use `gets.chomp` for the INPUT, so the INPUT will always come a string.
      - The INPUT should accept downcase and upcase letters.

    - Assumptions:
      - The program should be a method definition using a default parameter `Teddy`.
      - The words in the INPUT are separated by spaces.

Examples and Test Cases:
  - All examples of output conform to the rules.

Data Structure:
  - No
  
Algorithm:
    - Define a method called `get_name` without arguments                         # DONE
    - Prompt the user to input their name                                         # DONE
    - If the user has provided their name:                                        # DONE
      - Return their name (return: string).
    - If the user left the INPUT empty:                                           # DONE
      - Return a default value of the parameer `name = Teddy` (return: string).
  - Generate an age (`age = rand(20..200)`) (return: integer).                    # DONE
  - Output a string with the interpolated:                                        # DONE
      - returned String object referenced by `get_name` method invocation.
      - returned Integer object referenced by `age`.
=end

def get_name
  puts ">> Hi! What's your name?"
  name = gets.chomp

  name.empty? ? name = 'Teddy' : name
end

age = rand(20..200)
puts "#{get_name()}, you are #{age} years old!"
=begin
>> Hi! What's your name?
jhs
jhs, you are 24 years old!
$ ruby how_old_is_teddy_1.rb
>> Hi! What's your name?

Teddy, you are 97 years old!
=end