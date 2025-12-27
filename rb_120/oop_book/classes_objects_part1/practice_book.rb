# # ## Initialize Objects:
# # class GoodDog
# #   def initialize
# #     puts "This object was initialized!"
# #   end
# # end

# # sparky = GoodDog.new   # This object was initialized!



# # ## Instance Variables
# # class GoodDog
# #   def initialize(name)
# #     @name = name
# #   end
# # end

# # sparky = GoodDog.new("Sparky")  # (no output)


# # # Composition
# # class Engine
# #   def start
# #     puts "Engine starting..."
# #   end
# # end

# # class Car
# #   def initialize
# #     @engine = Engine.new  # Engine instance is created when Car is created 
# #   end

# #   def start
# #     @engine.start
# #   end
# # end

# # my_car = Car.new
# # my_car.start      # Engine starting...


# # # Aggregation
# # class Passenger
# # end

# # class Car
# #   def initialize(passengers)
# #     @passengers = passengers
# #   end
# # end

# # passengers = [Passenger.new, Passenger.new]
# # p passengers # [#<Passenger:0x00000001056c5380>, #<Passenger:0x00000001056c5308>]

# # my_car = Car.new(passengers)    # (no output)

# # p my_car   
# # #<Car:0x0000000109e253d8 @passengers=[#<Passenger:0x0000000109e254f0>, 
# # #<Passenger:0x0000000109e25478>]>



# # ## Instance Methods
# # class GoodDog
# #   def initialize(name)
# #     @name = name
# #   end

# #   def speak
# #     "Arf!"
# #   end
# # end

# # sparky = GoodDog.new("Sparky")
# # p sparky.speak       # "Arf!"
# # puts sparky.speak    # Arf!

# # fido = GoodDog.new("Fido")
# # puts fido.speak      # Arf!



# class GoodDog
#   def initialize(name)
#     @name = name
#   end

#   def speak
#     "#{@name} says arf!"
#   end
# end

# sparky = GoodDog.new("Sparky")  # The class is instantiated
# puts sparky.speak      # Sparky says arf!

# fido = GoodDog.new("Fido")
# puts fido.speak        # Sparky says arf!

# puts sparky.name
# # undefined method `name' for #<GoodDog:0x0000000105955050 @name="Sparky"> (NoMethodError)

# =begin
# `sparky` and `fio` are objects or an instance of `GoodDog` class.

# - "Sparky" is an argument to `GoodDog.new`
# - Ruby calls `initialize("Sparky")` behind the scenes
# - Inside `initialize`, the parameter `name` refers to `"Sparky"`
# - `@name = name` assigns `"Sparky"` to the instance variable
#   `@name` for that particular object.

# Same instance variable name `@name`.
# Different instance variable values `"Sparky"` for `sparky`, 
# `"Fido"` for `fido`.
# =end



# ## Accessor Methods
# # with getter method
# class GoodDog
#   def initialize(name)
#     @name = name
#   end

#   def get_name   # getter method
#     @name
#   end

#   def speak
#     "#{@name} says arf!"
#   end
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak      # Sparky says arf!
# puts sparky.get_name   # Sparky


# # with setter method
# class GoodDog
#   def initialize(name)
#     @name = name
#   end

#   def get_name
#     @name
#   end

#   def set_name=(name)    # setter methods
#     @name = name
#   end

#   def speak
#     "#{@name} says arf!"
#   end
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak        # Sparky says arf!
# puts sparky.get_name     # Sparky
# sparky.set_name = "Spartacus"
# puts sparky.get_name     # Spartacus



# class GoodDog
#   def initialize(name)
#     @name = name
#   end

#   def name         # This was renamed from "get_name" 
#     @name
#   end

#   def name=(n)    # This was renamed from "set_name="
#     @name = n
#   end

#   def speak
#     "#{@name} says arf!"
#   end
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak        # Sparky says arf!
# puts sparky.name         # Sparky
# sparky.name = "Spartacus"
# puts sparky.name         # Spartacus



# class Dog
#   def name=(n)
#     @name = n     # returns what was passed to the argument
#     "Laddiwboy"   # value is ignored
#   end
# end

# sparky = Dog.new()
# p sparky.name = "Sparky"      # returns `"Sparky"`
# puts(sparky.name = "Sparky")
# # Sparky



# with `attr_accessor` (creates a method for `getter` and `setter`)
class GoodDog
  attr_accessor :name  # creates the method name for `getter` and `setter`

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name
