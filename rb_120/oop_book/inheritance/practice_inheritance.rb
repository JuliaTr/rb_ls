## Class Inheritance
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak   # Hello!
puts paws.speak     # Hello!



class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new

puts sparky.speak     # Sparky says arf!
puts paws.speak       # Hello!




## Super
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog.new
p sparky.speak       # "Hello! from GoodDog class"



class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog.new("brown")
p bruno
# #<GoodDog:0x0000000109f74ef0 @name="brown", @color="brown">


class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

p BadDog.new(2, "bear")
# #<BadDog:0x000000010ffc4c10 @name="bear", @age=2>



class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super()
    @color = color
  end
end

bear = Bear.new("black")
p bear
# #<Bear:0x000000010c7f4dd0 @color="black">




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




## Method Lookup Path
module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable  # (3)

  def speak
    "I'm an animal, and I speak!"
  end
end

puts "---Animal method lookup---"
puts Animal.ancestors
=begin
---Animal method lookup---
Animal
Walkable
Object
Kernel
BasicObject
=end

fido = Animal.new
p fido.speak   # "I'm an animal, and I speak!"
p fido.walk    # "I'm walking."
p fido.swim
=begin
 undefined method `swim' for #<Animal:0x000000010d4a40d0> 
 (NoMethodError)
=end

class GoodDog < Animal
  include Swimmable  # (2)
  include Climbable  # (1)
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors
=begin
---GoodDog method lookup---
GoodDog
Climbable  (1)
Swimmable  (2)
Animal
Walkable   (3)
Object
Kernel
BasicObject
=end




## More Modules
module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')       # "Arf!"
kitty.say_name('kitty')   # "kitty"



module Conversions
  def self.farenheit_to_celsium(num)
    (num - 32) * 5 / 9
  end
end

value = Conversions.farenheit_to_celsium(32)
p value   # 0

value = Conversions.farenheit_to_celsium(80)
p value   # 26

value = Conversions::farenheit_to_celsium(32)
p value   # 0
