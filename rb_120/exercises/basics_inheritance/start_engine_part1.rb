=begin
Change the following code so that creating a new `Truck` 
automatically invokes `#start_engine`.
=end

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def start_engine
    puts 'Ready to go!'
  end
end

truck1 = Truck.new(1994)
puts truck1.year   # 1994



## Possible Solution
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year)
    super
    start_engine
  end

  def start_engine
    puts 'Ready to go!'
  end
end

# truck1 = Truck.new(1994)
# puts truck1.year
# =begin
# Ready to go!
# 1994
# =end

p Truck.ancestors   # [Truck, Vehicle, Object, Kernel, BasicObject]

puts Truck.ancestors
=begin
Truck
Vehicle
Object
Kernel
BasicObject
=end



## Experiments
# Overriding an inherited method
class Vehicle
  def start_engine
    puts 'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine
    puts "I'm a truck! Let's go!"
  end
end

# truck1 = Truck.new
# truck1.start_engine     # I'm a truck! Let's go!

puts Truck.ancestors
=begin
Truck
Vehicle
Object
Kernel
BasicObject
=end
