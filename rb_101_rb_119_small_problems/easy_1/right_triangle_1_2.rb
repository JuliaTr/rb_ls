=begin
Further Exploration:

PROBLEM
2. Try modifying your solution again so that you can 
display the triangle with the right angle at any corner of the grid.

_____________________________________________________________________

PEDAC (for modifications)

Problem:
  - Input: an integer object
  - Output: (?)

  - Rules:
    - Explicit: The displayed right triangle at any corner of the grid.
    - Implicit: 
      - The trigngle should be displayed in left top, left bottom, right top, right bottom corners.

Examples and Test Cases:
  triangle_grid(5, 'left_top')
  *****
  ****
  ***
  **
  *

  triangle_grid(5, 'right_top')
  *****
   ****
    ***
     **
      *

  triangle_grid(5, 'left_bottom')
  *
  **
  ***
  ****
  *****

  triangle_grid(5, 'right_bottom')
      *
     **
    ***
   ****
  *****

Data Structure:
  - (?)

Algorithm:
  - Define a method called `triangle_grid` that takes 2 arguments `number` and `angle`
  - Create a flow control for positioning the triangle
    - Build a triangle in each in branch for 4 angles
=end

def triangle_grid(number, angle)
  case angle
  when 'left_top'
    spaces = 0
    number.times do |star|
      puts ('*' * number) + (' ' * spaces)
      spaces += 1
      number -= 1
    end

  when 'right_top'
    spaces = 0
    number.times do |star|
      puts (' ' * spaces) + ('*' * number)
      spaces += 1
      number -= 1
    end

  when 'left_bottom'
    spaces = number - 1
    stars = 1
    number.times do |star|
      puts ('*' * stars) + (' ' * spaces)
      spaces -= 1
      stars += 1
    end

  when 'right_bottom'
    spaces = number + 1
    stars = 1
    number.times do |star|
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end
  end
end

triangle_grid(5, 'left_top')
# *****
# ****
# ***
# **
# *

triangle_grid(5, 'right_top')
# *****
#  ****
#   ***
#    **
#     *

triangle_grid(5, 'left_bottom')
# *
# **
# ***
# ****
# *****

triangle_grid(5, 'right_bottom')
#     *
#    **
#   ***
#  ****
# *****
