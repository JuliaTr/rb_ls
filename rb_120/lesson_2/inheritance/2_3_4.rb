=begin
Create a new class called `Cat`, which can do everything a dog 
can, except swim or fetch. Assume the methods do the exact 
same thing. Hint: don't just copy and paste all methods in `Dog` 
into `Cat`; try to come up with some class hierarchy.
=end

## Possible solution
class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim" 
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

p pete.run      # "running!"
p pete.speak    #  undefined method `speak' for #<Pet:0x0000000107124348> (NoMethodError)

p kitty.run     # "running!"
p kitty.speak   # "meow!"
p kitty.fetch   # undefined method `fetch' for #<Cat:0x0000000106854358> (NoMethodError)

p dave.speak    # "bark!"

p bud.run       # "running!"
p bud.swim      # "can't swim"

=begin
Pet
  run (method)
  jump (method)
  
  Cat
    speak (method)

  Dog
    speak (method)
    fetch (method)
    swim (method)

    Bulldog
      swim (method)
=end


p "---------Pet class lookip path-----------------"
p Pet.ancestors
# [Pet, Object, Kernel, BasicObject]

p "---------Cat class lookip path-----------------"
p Cat.ancestors
# [Cat, Pet, Object, Kernel, BasicObject]

p "---------Dog class lookip path-----------------"
p Dog.ancestors
# [Dog, Pet, Object, Kernel, BasicObject]

p "---------Bulldog class lookip path-----------------"
p Bulldog.ancestors
# [Bulldog, Dog, Pet, Object, Kernel, BasicObject]
