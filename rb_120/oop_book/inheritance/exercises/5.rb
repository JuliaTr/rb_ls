=begin
Move all of the methods from the MyCar class that also 
pertain to the MyTruck class into the Vehicle class. 
Make sure that all of your previous method calls are 
working when you are finished.
=end

module Towable
  def can_tow?(pounds)
    pounds < 200
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallons of gas"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1 
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts lumina
puts "-----MyCar lookup path------"
puts MyCar.ancestors
puts "-----MyTruck lookup path----"
puts MyTruck.ancestors
puts "-----Vehicle lookup path----"
puts Vehicle.ancestors

=begin
You push the gas and accelerate 20 mph.
You are now going 20 mph.
You push the gas and accelerate 20 mph.
You are now going 40 mph.
You push the brake and decelerate 20 mph.
You are now going 20 mph.
You push the brake and decelerate 20 mph.
You are now going 0 mph.
Let's park this bad boy!
27 miles per gallons of gas
Your new red paint job looks great!
My car is a red, 1997, chevy lumina!
-----MyCar lookup path------
MyCar
Vehicle
Object
Kernel
BasicObject
-----MyTruck lookup path----
MyTruck
Towable
Vehicle
Object
Kernel
BasicObject
-----Vehicle lookup path----
Vehicle
Object
Kernel
BasicObject
=end
