=begin
Problem 3: Shape Hierarchy with super

Description​: Create a Shape class with a method describe that 
returns "I am a shape." Create a Square class that inherits 
from Shape. The Square constructor should take a side_length. 
Override the describe method in Square to return "I am a 
shape. Specifically, I am a square with side length of X." 
using a call to the superclass's method.
=end

class Shape
  def describe
    "I am a shape."
  end
end

class Square < Shape
  def initialize(number)
    @number = number
  end

  def describe
    super + " Specifically, I am a square with side length of #{@number}."
  end
end

shape = Shape.new
p shape.describe == "I am a shape."
square = Square.new(5)
p square.describe == "I am a shape. Specifically, I am a square with side length of 5."
# All test cases return `true`
