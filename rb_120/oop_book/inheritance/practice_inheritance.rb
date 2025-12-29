# ## Class Inheritance
# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
# end

# class Cat < Animal
# end

# sparky = GoodDog.new
# paws = Cat.new
# puts sparky.speak   # Hello!
# puts paws.speak     # Hello!



# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n
#   end

#   def speak
#     "#{self.name} says arf!"
#   end
# end

# class Cat < Animal
# end

# sparky = GoodDog.new("Sparky")
# paws = Cat.new

# puts sparky.speak     # Sparky says arf!
# puts paws.speak       # Hello!




# ## Super
# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   def speak
#     super + " from GoodDog class"
#   end
# end

# sparky = GoodDog.new
# p sparky.speak       # "Hello! from GoodDog class"



# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# class GoodDog < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end

# bruno = GoodDog.new("brown")
# p bruno
# # #<GoodDog:0x0000000109f74ef0 @name="brown", @color="brown">


# class BadDog < Animal
#   def initialize(age, name)
#     super(name)
#     @age = age
#   end
# end

# p BadDog.new(2, "bear")
# # #<BadDog:0x000000010ffc4c10 @name="bear", @age=2>



# class Animal
#   def initialize
#   end
# end

# class Bear < Animal
#   def initialize(color)
#     super()
#     @color = color
#   end
# end

# bear = Bear.new("black")
# p bear
# # #<Bear:0x000000010c7f4dd0 @color="black">




## Mixing in Modules
module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable   # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable  # mixing in Swimmable module
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

p sparky.swim    # "I'm swimming!"
p neemo.swim     # "I'm swimming!"
p paws.swim  
=begin    
undefined method `swim' for #<Cat:0x000000010d0b4448> 
(NoMethodError)
=end

