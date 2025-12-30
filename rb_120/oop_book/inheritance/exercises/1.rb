=begin
- Create a superclass called `Vehicle` for your `MyCar` class 
  to inherit from
- move the behavior that isn't specific to the `MyCar` class 
  to the superclass. 
- Create a constant in your `MyCar` class that stores 
  information about the vehicle that makes it different 
  from other types of Vehicles.

- create a new class called `MyTruck` that inherits from 
  your superclass that also has a constant defined that 
  separates it from the `MyCar` class in some way.
=end


## Possible solution from assignment
class Vehicle
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')



# with whole game
class Vehicle
  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def self.ad_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas pedal and accelerate #{number} mph."
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

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year}, #{model}."
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{color}, #{year}, #{model}."
  end
end

my_car = MyCar.new('2010', 'Ford Focus', 'silver')
my_car.speed_up(20)
my_car.brake(20)
my_car.shut_down
my_car.current_speed

=begin
You push the gas pedal and accelerate 20 mph.
You push the brake and decelerate 20 mph.
Let's park this bad boy!
You are now going 0 mph.
=end

my_truck = MyTruck.new('2010', 'Ford Tundra', 'white')

puts my_car
puts my_truck

=begin
My car is a silver, 2010, Ford Focus.
My truck is a white, 2010, Ford Tundra.
=end
