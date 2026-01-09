=begin
Correct the following program so it will work properly. Assume 
that the Car class has a complete implementation; just make 
the smallest possible change to ensure that cars have access 
to the drive method.
=end

module Drivable
  def self.drive
    puts "driving"
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
# bobs_car.drive
# # undefined method `drive' for #<Car:0x0000000105445920> (NoMethodError)

## Experiments
Drivable.drive      # driving



## Bug fix
module Drivable
  def drive
    puts "driving"  # to test
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive
# driving            (works as expected)
