## Initialize objects:
class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new   # This object was initialized!



## Instance variables
class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")  # (no output)


# Composition
class Engine
  def start
    puts "Engine starting..."
  end
end

class Car
  def initialize
    @engine = Engine.new  # Engine instance is created when Car is created 
  end

  def start
    @engine.start
  end
end

my_car = Car.new
my_car.start      # Engine starting...


# Aggregation
class Passenger
end

class Car
  def initialize(passengers)
    @passengers = passengers
  end
end

passengers = [Passenger.new, Passenger.new]
my_car = Car.new(passengers)    # (no output)


