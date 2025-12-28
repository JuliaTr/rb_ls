=begin
- Add an accessor method to your MyCar class to change and 
  view the color of your car. 
- Then add an accessor method that allows you to view, but 
  not modify, the year of your car.
=end

class MyCar
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  # to view
  def color           # same as `get_color`
    @color
  end

  # to modify
  def color=(color)   # same as `set_color`
    @color = color
  end

  def info
    "Your car is #{@color} #{@model.upcase} produced in #{@year}."
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
puts lumina.info
puts lumina.color
=begin
Your car is white CHEVY LUMINA produced in 1997.
white
=end

lumina.color = 'blue'
puts lumina.color
# blue
