=begin

PROBLEM

Write a method that takes a positive integer, `n`, as an argument, 
and displays a right triangle whose sides each have `n` stars.
The hypotenuse of the triangle (the diagonal side in the images below) 
should have one end at the lower-left of the triangle, and the other end at the upper-right.

TEST CASES
triangle(5)
    *
   **
  ***
 ****
*****

triangle(9)
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

___________________________________________________________________________________________

PEDAC

Problem:
  - Input: an integer object
  - Output: a displayed right triangle whose sides each have `n` stars

  - Rules:
    - Explicit:
      - A positive integer as INPUT.
      - The hypotenuse of the triangle (the diagonal side) 
        should have one end at the lower-left of the triangle, and the other end at the upper-right.
      - A triangle should be displayed, not returned.
    - Implicit:
      - No

Examples and Test Cases:
  - All examples and test cases conform to the rules.

Data Structure:
  - Array (?)

___________________________________________________________________________________________________
Mental Model:
Define a method which will output a right triangle of stars.
The building of the triangle goes from the top, starting from one star on the right side of the triangle.
Each next layer should have one star more than the previous one.
The base of the triagle should be the length of the number of stars passed in as an argument.
___________________________________________________________________________________________________

Algorithm:
  - Define a method called `triangle` that takes one parameter `n`.
  - Build triangle from its top, justifying the first star on the right side of `n` stars colunm
  - Each next line should contain + 1 star till the `n` stars in the base.
=end

# Define a method called `triangle` that takes one parameter `n`.
def triangle(n)
  # Build triangle from its top, justifying the first star on the right side of the colunm
  star = '*'
  counter = 0
  white_space = ' '
  white_space_number = n - 1

  # Each next line should contain + 1 star till the `n` stars in the base.
  loop do
    puts "#{white_space * white_space_number}" + star
    white_space_number -= 1                           # shorthand for white_space_number = white_space_number - 1
    star[counter] = star[counter] + star[counter]
    break if counter == n - 1
    counter += 1                                      # shorthand for counter = counter + 1
  end
end

triangle(5)
#     *
#    **
#   ***
#  ****
# *****

triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********



## Solution from the exercise:

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end



## Experiments:

star = '*'
counter = 0
white_space = ' '
white_space_number = 4
loop do
  puts "#{white_space * white_space_number}" + star
  white_space_number = white_space_number - 1
  star[counter] = star[counter] + star[counter]
  break if counter == 4
  counter = counter + 1
end

# Output:
#     *
#    **
#   ***
#  ****
# *****



star = '*'
counter = 0
loop do
  puts star
  star[counter] = star[counter] + star[counter]
  break if counter == 4
  counter = counter + 1
end

# Output:
# *
# **
# ***
# ****
# *****