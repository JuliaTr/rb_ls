=begin
A triangle is classified as follows:

- equilateral: All 3 sides are of equal length
- isosceles: 2 sides are of equal length, while the 3rd is 
  different
- scalene: All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two 
shortest sides must be greater than the length of the 
longest side, and all sides must have lengths greater than 
0: if either of these conditions is not satisfied, the 
triangle is invalid.

Write a method that takes the lengths of the 3 sides of a 
triangle as arguments, and returns a symbol `:equilateral`, 
`:isosceles`, `:scalene`, or `:invalid` depending on whether 
the triangle is equilateral, isosceles, scalene, or invalid.
=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  longest_side = sides.max
  index_longest_side = sides.index(longest_side)
  sum_other_sides = sides[index_longest_side + 1..-1].sum

  case
  when (side1 != side2) && (side2 != side3) && (side1 != side3)
    :scalene
  when longest_side > sum_other_sides || sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3 && side1 == side3
    :equilateral
  when side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral   # true
p triangle(3, 3, 1.5) == :isosceles   # true
p triangle(3, 4, 5) == :scalene       # true
p triangle(0, 3, 3) == :invalid       # true
p triangle(3, 1, 1) == :invalid       # true



## Possible solution:
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side >= sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral   # true
p triangle(3, 3, 1.5) == :isosceles   # true
p triangle(3, 4, 5) == :scalene       # true
p triangle(0, 3, 3) == :invalid       # true
p triangle(3, 1, 1) == :invalid       # true
