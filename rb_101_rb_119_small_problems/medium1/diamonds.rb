=begin
Write a method that displays a 4-pointed diamond in an n x n 
grid, where `n` is an odd integer that is supplied as an 
argument to the method. You may assume that the argument will 
always be an odd integer.
=end

def display_diamond_upper_part(number)
  number_of_spaces = number
  number_of_stars = 1
  loop do
    puts "#{' ' * (number_of_spaces / 2)}#{'*' * number_of_stars}"
    break if number_of_stars == number - 2

    number_of_spaces -= 2
    number_of_stars += 2
  end
end

def display_diamond_lower_part(number)
  number_of_spaces = 1
  number_of_stars = number - 2
  loop do
    puts "#{' ' * number_of_spaces}#{'*' * number_of_stars}"
    break if number_of_stars == 1 
    
    number_of_spaces += 1
    number_of_stars -= 2
  end
end

def diamond(number)
  puts
  center = '*' * number

  if number < 3
    puts center
    return
  end

  # Diamond
  display_diamond_upper_part(number)
  puts center
  display_diamond_lower_part(number)
end

diamond(1)

# *               (uncomment to see alignment)


diamond(3)

#  *              (uncomment to see alignment)
# ***
#  *


diamond(9)

#     *           (uncomment to see alignment)
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# Works as expected.



## Possible solution:
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(1)

# *               (uncomment to see alignment)


diamond(3)

#  *              (uncomment to see alignment)
# ***
#  *


diamond(9)

#     *           (uncomment to see alignment)
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# Works as expected.
