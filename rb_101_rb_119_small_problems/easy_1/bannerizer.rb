=begin

PROBLEM
Write a method that will take a short line of text, and print it within a box.
Assume that the input will always fit in the terminal window.

TEST CASES
print_in_box('To boldly go where no one has gone before')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

_____________________________________________________________________________

PEDAC

Problem:
  - Input: a string object
  - Output: a printed string within a box

  - Rules:
    - Explicit: 
      - A short line of text should be printed within the box
      - The input will always fit in the terminal window

    - Implicit: 
      - If a string is empty:
          * an empty box should be printed;
          * the width of the box is 4 columns;
          * the length of the box is 5 rows.
      - A box consists of `-`, `+` and `|`
      - If there's a string:
          * the box around the string should be printed;
          * the width of the box is 2 columns more than the lengh of the string;
          * the length of the box is the same as for the empty string;
          * the text should be in the middle of the box.

Examples and Test Cases:
  - All examples contain the rules. 

Data Structure:
  - No

Algorithm:
  - Define a method called `print_in_box` that has one parameter `string`
  - Create an empty box with an empty string
  - Create a string and fit the box around the string
=end

def print_in_box(string)
  horizontal_rule = "+#{'-' * (string.size + 2)}+"
  empty_line = "|#{' ' * (string.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')



## Experiments:

def print_in_box(string)
  puts '+--+'
  3.times do
    puts '|'.ljust(0) + '|'.rjust(3)
  end
  puts '+--+'
end

print_in_box('')



def print_in_box(string)
  if string.length > 0
    print '+' 
    (string.length + 2).times { print '-' }
    puts '+'
    print '|'.ljust(0)
    puts '|'.rjust(string.length + 3)
    print '|'.ljust(0) 
    print string.center(string.length + 2)
    puts '|'.rjust(1)
    puts '|'.ljust(0) + '|'.rjust(string.length + 3)
    print '+' 
    (string.length + 2).times { print '-' }
    puts '+'
  else
    print '+'
    (string.length + 1).times { print '--'}
    puts '+'
    print '|'.ljust(0)
    puts '|'.rjust(string.length + 3)
    print '|'.ljust(0)
    puts '|'.rjust(string.length + 3)
    puts '|'.ljust(0) + '|'.rjust(string.length + 3)
    print '+'
    (string.length + 1).times { print '--' }
    puts '+'
  end
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')