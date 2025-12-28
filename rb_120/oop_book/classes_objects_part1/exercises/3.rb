=begin
- You want to create a nice interface that allows you to 
  accurately describe the action you want your program to 
  perform. 
- Create a method called `spray_paint` that can be called 
  on an object and will modify the color of the car.
=end

class MyCar
  attr_accessor :color

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
  end

  def spray_paint(color)
    # `self` is used because we have setter method by 
    # `attr_accessor`, don't need to use `@`
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  # # Alternative
  # def spray_paint(color)
  #   @color = color
  #   puts "Your new #{@color} paint job looks great!"
  # end

  def info
    "Your car is #{@color} #{@model.upcase} produced in #{@year}."
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
puts lumina.info
# Your car is white CHEVY LUMINA produced in 1997.

puts lumina.color
lumina.spray_paint('blue')
puts lumina.color
=begin
white
Your new blue paint job looks great!
blue
=end
