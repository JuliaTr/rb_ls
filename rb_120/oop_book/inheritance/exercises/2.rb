=begin
- Add a class variable to your superclass that can keep 
track of the number of objects created that inherit from 
the superclass. 
- Create a method to print out the value of this class 
variable as well.
=end

## Possible solution
class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0

    # is incremented every time we create a vehicle in any
    # of subclasses. Every time we initialize one, we add one.
    # The number of vehicles is constant.
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles}."
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end

my_car = MyCar.new('2010', 'Ford Focus', 'silver')
my_car2 = MyCar.new('2010', 'Ford Focus', 'silver')
my_car3 = MyCar.new('2010', 'Ford Focus', 'silver')
my_car4 = MyCar.new('2010', 'Ford Focus', 'silver')
my_truck = MyTruck.new('2010', 'Ford Tundra', 'white')

Vehicle.number_of_vehicles
# This program has created 5.
