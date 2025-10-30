=begin
Write a method that takes two arguments, a string and a 
positive integer, and prints the string as many times as the 
integer indicates.

repeat('Hello', 3)

Output:
Hello
Hello
Hello

_______________________________________________________

PEDAC (part):

High-level:
- Print string number of times

Algo:
- Iterate number of times
  - print string
=end

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)

# Output:
# Hello
# Hello
# Hello
