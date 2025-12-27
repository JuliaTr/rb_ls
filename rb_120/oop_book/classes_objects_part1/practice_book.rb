## Initialize Objects:
class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new   # This object was initialized!



## Instance Variables
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
p passengers # [#<Passenger:0x00000001056c5380>, #<Passenger:0x00000001056c5308>]

my_car = Car.new(passengers)    # (no output)

p my_car   
#<Car:0x0000000109e253d8 @passengers=[#<Passenger:0x0000000109e254f0>, 
#<Passenger:0x0000000109e25478>]>



## Instance Methods
class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "Arf!"
  end
end

sparky = GoodDog.new("Sparky")
p sparky.speak       # "Arf!"
puts sparky.speak    # Arf!

fido = GoodDog.new("Fido")
puts fido.speak      # Arf!



class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")  # The class is instantiated
puts sparky.speak      # Sparky says arf!

fido = GoodDog.new("Fido")
puts fido.speak        # Sparky says arf!

=begin
`sparky` and `fio` are objects or an instance of `GoodDog` class.

- "Sparky" is an argument to `GoodDog.new`
- Ruby calls `initialize("Sparky")` behind the scenes
- Inside `initialize`, the parameter `name` refers to `"Sparky"`
- `@name = name` assigns `"Sparky"` to the instance variable
  `@name` for that particular object.

Same instance variable name `@name`.
Different instance variable values `"Sparky"` for `sparky`, 
`"Fido"` for `fido`.
=end
