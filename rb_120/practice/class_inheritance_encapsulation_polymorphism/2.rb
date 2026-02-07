# Polymorphism with Inheritance

class Vehicle
  def travel
    puts "Moving..."
  end
end

class Car < Vehicle
  def travel
    puts "Driving..."
  end
end

class Bicycle < Vehicle
  def travel
    puts "Pedaling..."
  end
end

class Skateboard < Vehicle
end

vehicles = [Car.new, Bicycle.new, Skateboard.new]
vehicles.each do |vehicle|
  vehicle.travel
end

=begin
Output:
Driving...
Pedaling...
Moving...
=end

=begin
On line 24, new objects `Car.new`, `Bicycle.new`, `SkateBoard.new`
are created and stored in an array, which is assigned to `vehicles`.

On line 26, the  `vehicle.travel` call on each vehicle from the
array output `Driving...` (for `Car.new`), `Pedaling...` (for `Bicycle.new`)
`Moving...` (for `Skateboard.new`).

Lines 3-7 contan a parent class `Vehicle`. Classes `Car` 
(lines 9-13), `Bicycle` (lines 15-19), `Skateboard` (lines 21-22)
inherit from `Vehicle`. The `travel` method (lines 4-6) is 
defined in `Vehicle`. `Car` and `Bicycle` have their own `travel`
method defined. According to method look-up path Ruby has found 
`travel` method, being overriden  in `Car` and `Bicycle`. However, 
for `Skateboard` Ruby has found `travel` in `Vehicle`.

Invoking `vehicle.travel` (line 26) different objects created
by different classes respond to a common interface (method `travel`)
through inheritance, which represents polymorphism concept.
=end
