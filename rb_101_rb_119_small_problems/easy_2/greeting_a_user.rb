=begin

PROBLEM
Write a program that will ask for user's name.
The program will then greet the user.
If the user writes "name!" then the computer yells back to the user.
Hint: You may find `String#chomp` or `String#chop` handy.

EXAMPLES
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

____________________________________________________________________

PEDAC

Problem
  - Input: A string object.
  - Output: A string.

  - Rules:
    - Explicit:
      - Should ask for a user's name.
      - Should greet the user.
      - If the user writes "name!" then the computer yells back to the user.
      - Use `String#chomp` or `String#chop`.

    - Implicit:
      - The user INPUT should be shouwn on the same line as the prompt.

    - Assumptions:
      - The INPUT is only down case English letters. 

Examples and Test Cases:
  - All examples conform to the rules.

Data Structure:
  - No

Algorithm:
  - Ask the user "What is your name?".                                                              
  - Assign the INPUT answer to the variable `name` (return: string).
  - If there's a bang (`!`) after the name:
    - Then display an upper case string with their name.
  - Otherwise, display greeting and INPUT.
=end

print "What is your name? "
name = gets.chomp

if name.include?('!')
  puts "HELLO #{name.upcase.chomp('!')}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end



## From the exercise solution:

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

