=begin
Write a method that takes a positive integer, `n`, as an 
argument, and displays a right triangle whose sides each have 
`n` stars. The hypotenuse of the triangle (the diagonal side 
in the images below) should have one end at the lower-left of 
the triangle, and the other end at the upper-right.

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

____________________________________________________________

PEDAC:
Reqs/rules:
- `n` is an argument
- `n` is a number of stars at the bottom of the triangle
- display right triangle
- triangle's sides have `n` start
- 

Algorithm:
- Define a `triangle` method which takes an integer as an argument
- Output empty strings number times less 1 than the number of 
  star and one star
- Increment number of stars till the number of stars is equal to `n`
=end

## Refactored solution:
def triangle(n)
  star = '*'
  white_space = ' '

  n.times do |star_number|
    current_star_number = star_number + 1
    puts "#{white_space * (n - current_star_number)}#{star * current_star_number}"
  end
end

# `star_number` holds the value for the current loop iteration (`0`, `1`, `2`...)
# `current_star_count` is a new variable which holds the calculated
# number of stars for the line.

triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end

triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end



## Experiments:
# Not recommended to change block parameter (reassigning block parameter):
def triangle(n)
  star = '*'
  white_space = ' '

  n.times do |star_number|
    star_number = star_number + 1  # like chaging index
    puts "#{white_space * (n - star_number)}#{star * star_number}"
  end
end

triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end

triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end



## Solution:
def triangle(n)
  star = '*'
  white_space = ' '

  star_number = 1
  while n >= star_number
    puts "#{white_space * (n - star_number)}#{star * star_number}"
    star_number += 1
  end
end

triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end

triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end



## Possible solution:
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end

triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end
