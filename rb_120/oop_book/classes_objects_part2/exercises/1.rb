=begin
Add a class method to your MyCar class that calculates 
the gas mileage (i.e. miles per gallon) of any car.
=end

## Solution
class MyCar
  MILES_PER_GALLON = 15

  attr_accessor :gas_mileage

  def initialize(gas_mileage)
    @gas_mileage = gas_mileage / MILES_PER_GALLON
  end

  def to_s
    "Your gas milleage is #{gas_mileage} miles per gallon."
  end
end

kia = MyCar.new(100)
puts kia

chevrolet = MyCar.new(80)
puts chevrolet

=begin
Your gas milleage is 6 miles per gallon.
Your gas milleage is 5 miles per gallon.
=end



## Possible solution
class MyCar
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

MyCar.gas_mileage(13, 351)  # 27 miles per gallon of gas

# `self` tells us that it is a class method


## Experiments
class MyCar
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

MyCar.gas_mileage(15, 80)   # 5 miles per gallon of gas
