=begin
The documentation for `while` loop can be found here
https://docs.ruby-lang.org/en/3.2/syntax/control_expressions_rdoc.html

From the documentation:
The `while` loop executes while a condition is true:
=end

a = 0

while a < 10 do
  p a
  a += 1
end

p a
=begin
Output:
0
1
2
3
4
5
6
7
8
9
10
=end

=begin
Continue with the documentation:

Prints the numbers 0 through 10. The condition a < 10
is checked before the loop is entered, then the body executes, 
then the condition is checked again. When the condition results 
in false the loop is terminated.

The `do` keyword is optional. The following loop is equivalent 
to the loop above:
=end

while a < 10
  p a
  a += 1
end

# The result of a while loop is `nil` unless break is used 
# to supply a value.



## Experiments:
a = 0

while a < 10 do
  p a
  a += 1
end
=begin
0
1
2
3
4
5
6
7
8
9
=end
