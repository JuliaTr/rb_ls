# The code below raises an exception. Examine the error message and alter the code so that it runs without error.

## Solution:
class Animal
  def initialize(diet, superpower)
    @diet = diet
    @superpower = superpower
  end

  def move
    puts "I'm moving!"
  end

  def superpower
    puts "I can #{@superpower}"
  end
end

class Fish < Animal
  def move
    puts "I'm swimming!"
  end
end

class Bird < Animal
end

class FlightlessBird < Bird
  def initialize(diet, superpower)
    super
  end

  def move
    puts "I'm running"
  end
end

class SongBird < Bird
  def initialize(diet, superpower, song)
    super(diet, superpower)  # issue was here (parameters were missing)
    @song = song
  end

  def move
    puts "I'm flying!"
  end
end

unicornfish = Fish.new(:herbivore, 'breathe underwater')
penguin = FlightlessBird.new(:carnivore, 'drink sea water')
robin = SongBird.new(:omnivore, 'sing', 'chirp chirr chirp chirp chirrrr')

