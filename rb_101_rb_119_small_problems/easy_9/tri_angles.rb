=begin
A triangle is classified as follows:

- right: One angle of the triangle is a right angle 
(90 degrees)
- acute: All 3 angles of the triangle are less than 90 
degrees
- obtuse: One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 
180 degrees, and all angles must be greater than 0: if 
either of these conditions is not satisfied, the triangle is 
invalid.

Write a method that takes the 3 angles of a triangle as 
arguments, and returns a symbol `:right`, `:acute`, `:obtuse`, 
or `:invalid` depending on whether the triangle is a right, 
acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to 
worry about floating point errors. You may also assume that 
the arguments are specified in degrees.
=end

## Refactored solution:
VALID_TRIANGLE_ANGLES_DEGREES = 180
RIGHT = 90

def invalid_triangle?(angles, sum_of_angles)
  has_0_angle = angles.any? { |angle| angle == 0 }
  (sum_of_angles != VALID_TRIANGLE_ANGLES_DEGREES) ||  has_0_angle
end

def right_triangle?(angles)
  angles.any? { |angle| angle == RIGHT }
end

def acute_triangle?(angles)
  angles.all? { |angle| angle < RIGHT }
end

def obtuse_triangle?(angles)
  angles.any? { |angle| angle > RIGHT }
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  sum_of_angles = angles.sum

  case
  when invalid_triangle?(angles, sum_of_angles)
    :invalid
  when right_triangle?(angles)
    :right
  when acute_triangle?(angles)
    :acute
  when obtuse_triangle?(angles)
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute     # true
p triangle(30, 90, 60) == :right     # true
p triangle(120, 50, 10) == :obtuse   # true
p triangle(0, 90, 90) == :invalid    # true
p triangle(50, 50, 50) == :invalid   # true



## Solution:
VALID_TRIANGLE_ANGLES_DEGREES = 180
RIGHT = 90

def triangle(angle1, angle2, angle3)
  triangle_angles = [angle1, angle2, angle3]

  sum_of_angles = triangle_angles.sum
  has_0_angle = triangle_angles.any? { |angle| angle == 0 }
  has_90_angle = triangle_angles.any? { |angle| angle == RIGHT }
  all_angles_less_90 = triangle_angles.all? { |angle| angle < RIGHT }
  angle_has_greater_120 = triangle_angles.any? { |angle| angle > RIGHT }

  case
  when (sum_of_angles != VALID_TRIANGLE_ANGLES_DEGREES) ||  has_0_angle
    :invalid
  when has_90_angle
    :right
  when all_angles_less_90
    :acute
  when angle_has_greater_120
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute     # true
p triangle(30, 90, 60) == :right     # true
p triangle(120, 50, 10) == :obtuse   # true
p triangle(0, 90, 90) == :invalid    # true
p triangle(50, 50, 50) == :invalid   # true



## Possible solution:
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute     # true
p triangle(30, 90, 60) == :right     # true
p triangle(120, 50, 10) == :obtuse   # true
p triangle(0, 90, 90) == :invalid    # true
p triangle(50, 50, 50) == :invalid   # true
