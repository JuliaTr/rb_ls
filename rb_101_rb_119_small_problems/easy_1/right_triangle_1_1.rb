=begin

Further Exploration:

PROBLEM
1. Try modifying your solution so it prints the triangle 
upside down from its current orientation.
____________________________________________________________________

PEDAC (for modifications)

1. Problem:
  - Output: printed triangle upside down.

  - Rules:
    - Explicit: The triangle should be upside down from its current orientation.

Examples and Test Cases:
triangle_upside_down(5)
*****
 ****
  ***
   **
    *

triangle_upside_down(9)
*********
 ********
  *******
   ******
    *****
     ****
      ***
       **
        *

Data Structure:
  - No

Algorithm:
  - Define a method `triangle_upside_down` that takes one argument 'stars'
  - Print the number of stars `n` number of times starting from the base of the triangle
    - Decrement the number of stars every next iteration, 
      justifying the stars to the perpendicular side of the triangle
=end

def triangle_upside_down(number_stars)
  spaces = 0
  number_stars.times do |n|
    puts (' ' * spaces) + ('*' * number_stars)
    spaces += 1
    number_stars -= 1
  end
end

triangle_upside_down(5)
# *****
#  ****
#   ***
#    **
#     *

triangle_upside_down(9)
# *********
#  ********
#   *******
#    ******
#     *****
#      ****
#       ***
#        **
#         *