=begin
Create a module that you can mix in to ONE of your 
subclasses that describes a behavior unique to that 
subclass.
=end

## Solution
module Roarable
  def roar
    "It roars when it speeds up."
  end
end

class Vehicle
end

class MyCar < Vehicle
end

class MyTruck < Vehicle
  include Roarable
end

my_truck = MyTruck.new
puts my_truck.roar     # It roars when it speeds up.



## Possible solution
module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize
    @@number_of_vehicles += 1
  end
end

class MyCar < Vehicle
  include Towable
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

my_car = MyCar.new
my_truck = MyTruck.new

puts my_car.can_tow?(30)    # true
puts my_car.can_tow?(4000)  # false
