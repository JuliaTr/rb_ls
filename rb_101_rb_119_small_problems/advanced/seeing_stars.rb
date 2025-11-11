=begin
Write a method that displays an 8-pointed star in an `n`x`n` grid, 
where `n` is an odd integer that is supplied as an argument to 
the method. The smallest such star you need to handle is a 7x7 
grid.
=end

## Refactored solution:
def upper_star_beams(side, between)
  while between >= 0
    puts "#{' ' * side}*#{' '* between}*#{' ' * between}*"
    side += 1
    between -= 1
  end
end

def lower_star_beams(side, between, max_distance)
  while between <= max_distance
    puts "#{' ' * side}*#{' ' * between}*#{' ' * between}*"
    side -= 1
    between += 1
  end
end

def star(number)
  min_distance = 0 
  max_distance = (number - 3) / 2

  upper_star_beams(min_distance, max_distance)
  puts '*' * number
  lower_star_beams(max_distance, min_distance, max_distance)
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *


star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# Works as expected



## Solution:
def star(number)
  white_space_sides = 0
  white_space_between_stars = (number - 3) / 2

  until white_space_between_stars == -1
    puts "#{' ' * white_space_sides}*#{' ' * white_space_between_stars}*#{' ' * white_space_between_stars}*#{' ' * white_space_sides}"
    white_space_between_stars -= 1
    white_space_sides += 1
  end

  puts '*' * number

  white_space_sides = (number - 3) / 2
  white_space_between_stars = 0
  until white_space_sides == -1
    puts "#{' ' * white_space_sides}*#{' ' * white_space_between_stars}*#{' ' * white_space_between_stars}*#{' ' * white_space_sides}"
    white_space_between_stars += 1
    white_space_sides -= 1
  end
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *


star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# Works as expected



## Possible solution:
def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *


star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# Works as expected
