=begin
Print to the screen your method lookup for the classes 
that you have created.
=end

module Towable
  def can_tow?(pounds)
    pounds < 200
  end
end

class Vehicle
end

class MyCar < Vehicle
end

class MyTruck < Vehicle
  include Towable
end

puts "---MyCar method lookup---"
puts MyCar.ancestors
=begin
---MyCar method lookup---
MyCar
Vehicle  # superclass
Object
Kernel
=end

puts "---MyTruck method lookup---"
puts MyTruck.ancestors
=begin
---MyTruck method lookup---
MyTruck
Towable
Vehicle   # superclass
Object
Kernel
BasicObject
=end

puts "---Vehicle method lookup---"
puts Vehicle.ancestors
=begin
---Vehicle method lookup---
Vehicle
Object
Kernel
BasicObject
=end
