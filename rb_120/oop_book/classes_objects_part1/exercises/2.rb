=begin
- Add an accessor method to your MyCar class to change and 
  view the color of your car. 
- Then add an accessor method that allows you to view, but 
  not modify, the year of your car.
=end

## Solution
# View and change color
# View year
class MyCar
  attr_accessor :color

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
  end

  def year
    @year
  end

  def info
    "Your car is #{@color} #{@model.upcase} produced in #{@year}."
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
puts lumina.info
# Your car is white CHEVY LUMINA produced in 1997.

lumina.color = 'blue'
puts lumina.info
# Your car is blue CHEVY LUMINA produced in 1997.

puts lumina.year   # 1997

lumina.year = 2003
puts lumina.info
=begin
undefined method `year=' for #<MyCar:0x000000010f4bcb38 
@year=1997, @model="chevy lumina", @color="blue", 
@current_speed=0> (NoMethodError)
=end



# View and change color
# with getter an setter
class MyCar
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
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



## Possible solution:
# View and change color
# View year
class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
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

lumina.color = 'black'
puts lumina.info
puts lumina.color 
=begin
Your car is black CHEVY LUMINA produced in 1997.     
black
=end

puts lumina.year     # 1997
lumina.year = 2003
puts lumina.year     
=begin
undefined method `year=' for #<MyCar:0x00000001047c48e0 
@year=1997, @model="chevy lumina", @color="black"> 
(NoMethodError)

Means we don't have a setter method for a year.
=end
