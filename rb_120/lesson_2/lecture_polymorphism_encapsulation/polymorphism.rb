# ## Polymorphism
# # Polymorphism through inheritance
# class Animal
#   def move
#     puts "doesn't move"
#   end
# end

# class Fish < Animal
#   def move
#     puts "swim"
#   end
# end

# class Cat < Animal
#   def move
#     puts "walk"
#   end
# end

# # Sponges and corals don't move. So, they don't have a separate 
# # move method
# class Sponge < Animal; end
# class Coral < Animal; end

# animals = [Fish.new, Cat.new, Sponge.new, Coral.new]
# animals.each { |animal| animal.move }
# =begin
# swim
# walk
# doesn't move
# doesn't move
# =end



# module Floatable
#   def float
#     puts "float"
#   end
# end

# class Animal
#   def move
#     puts "doesn't move"
#   end
# end

# # Fish can float
# class Fish < Animal
#   include Floatable

#   def move
#     puts "swim"
#   end
# end

# class Cat < Animal
#   def move
#     puts "walk"
#   end
# end

# # Sponges can't float, but corals can float
# class Sponge < Animal; end

# class Coral < Animal
#   include Floatable
# end

# floating_animals = [Fish.new, Coral.new]
# floating_animals.each { |animal| animal.float }
# =begin
# float
# float
# =end



# module Floatable
#   def float
#     puts "float"
#   end
# end

# class Animal
#   def move
#     puts "doesn't move"
#   end
# end

# class Fish < Animal
#   include Floatable

#   def move
#     puts "swim"
#   end
# end

# class Cat < Animal
#   def move
#     puts "walk"
#   end
# end

# class Sponge < Animal; end

# class Coral < Animal
#   include Floatable
# end

# # A boat is not a type of animal, but it can float
# class Boat
#   include Floatable
# end

# floating_things = [Fish.new, Coral.new, Boat.new]
# floating_things.each { |thing| thing.float }
# =begin
# float
# float
# float
# =end



# Polymorphism through duck typing
class Wedding
  attr_reader :guests, :flowers, :songes

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_wedding(self)
    end
  end
end

class Chef
  def prepare_wedding(wedding)
    prepare_food(wedding.guests)
  end

  def prepare_food(guests)
    #implementation
  end
end

class Decorator
  def prepare_wedding(wedding)
    decorate_place(wedding.flowers)
  end

  def decorate_place(flowers)
    #implementation
  end
end

class Musician
  def prepare_wedding(wedding)
    prepare_performance(wedding.songs)
  end

  def prepare_performance(songs)
    #implementation
  end
end


# !!! DON'T do it !!! (not a duck typing)
class Wedding
  attr_reader :guests, :flowers, :songs

  def prepare(prepares)
    prepares.each do |preparer|
      case preparer
      when Chef
        preparer.prepare_food(guests)
      when Decorator
        preparer.decorate_place(flowers)
      when Musician
        preparer.prepare_performance(songs)
      end
    end
  end
end

class Chef
  def prepare_food(guests)
    #implementation
  end
end

class Decorator
  def decorator_place(flowers)
    #implementation
  end
end

class Musician
  def prepare_performance(songs)
    #implementation
  end
end
