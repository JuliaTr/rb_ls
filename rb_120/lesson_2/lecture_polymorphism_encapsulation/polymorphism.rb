## Polymorphism
# Polymorphism through inheritance
class Animal
  def move
    puts "doesn't move"
  end
end

class Fish < Animal
  def move
    puts "swim"
  end
end

class Cat < Animal
  def move
    puts "walk"
  end
end

# Sponges and corals don't move. So, they don't have a separate 
# move method
class Sponge < Animal; end
class Coral < Animal; end

animals = [Fish.new, Cat.new, Sponge.new, Coral.new]
animals.each { |animal| animal.move }
=begin
swim
walk
doesn't move
doesn't move
=end



module Floatable
  def float
    puts "float"
  end
end

class Animal
  def move
    puts "doesn't move"
  end
end

# Fish can float
class Fish < Animal
  include Floatable

  def move
    puts "swim"
  end
end

class Cat < Animal
  def move
    puts "walk"
  end
end

# Sponges can't float, but corals can float
class Sponge < Animal; end

class Coral < Animal
  include Floatable
end

floating_animals = [Fish.new, Coral.new]
floating_animals.each { |animal| animal.float }
=begin
float
float
=end