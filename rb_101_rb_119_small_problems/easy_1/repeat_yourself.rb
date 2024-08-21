=begin

PROBLEM

Write a method that takes two arguments, a string and a positive integer,
and prints the string as many times as the integer.

TEST CASES

repeat('Hello', 3)
Ouput:
Hello
Hello
Hello

________________________________________________________________________

PEDAC

- Problem:
  - Input: string and positive integer objects
  - Output: a string printed as many times as a positive integer

  - Rules:
    - Explicit: print the string as many times as the integer 
    - Implicit: output the strings on each line separately

- Examples and Test Cases:
  - The only test case in the problem description

- Data Structure:
  - No

- Algorithm:
  - Define a method called `repeat` that has two parameters `string` and `number`
  - Iterate through `string` the number of times indicated by `number` to print it.
=end

def repeat(string, number)
  number.times do 
    puts string
  end
end

repeat('Hello', 3)
