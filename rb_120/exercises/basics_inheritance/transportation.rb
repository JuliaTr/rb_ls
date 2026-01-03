=begin
- Create a module named `Transportation` that contains three 
  classes: Vehicle, Truck, and Car. 
- `Truck` and `Car` should both inherit from `Vehicle`.
=end

module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end
end

p Transportation::Truck.new  
#<Transportation::Truck:0x00000001077958a8>
