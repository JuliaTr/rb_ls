## Collaborator Objects
class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

joe = Person.new("Joe")
p joe.name               # "Joe"

=begin
A `Person` object's `name` attribute can be saved into a `@name`
instance variable as a string.
=end



class Person
  def initialize
    @heroes = ['superman', 'Spiderman', 'Batman']
    @cash = { 'ones' => 12, 'fives' => 2, 'tens' => 0, 'twenties' => 2, 'hundreds' => 0 }
  end

  def cash_on_hand
    # this method will use @cash to calculate total cash value
    # we'll skip the implementation
  end

  def heroes
    @heroes.join(', ')
  end
end

joe = Person.new
joe.cash_on_hand      # => "$62.00"
joe.heroes            # => "Superman, Spiderman, Batman"




class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name   # technically a collaborator object
  end
end

class Dog
  def speak
    'bark!'
  end

  def fetch
    'fetching!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog
end

bob = Person.new("Robert")
bud = Bulldog.new

# Collaborator object
bob.pet = bud

p bob.pet              #<Bulldog:0x00000001065f5148>
p bob.pet.class        # Bulldog

p bob.pet.speak        # "bark!"
p bob.pet.fetch        # "fetching!"



class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

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

  def fetch
    'fetching!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog
end

class Cat < Pet
  def speak
    'meow!'
  end
end

bob = Person.new("Robert")

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud

p bob.pets  # [#<Cat:0x0000000100a64ab8>, #<Bulldog:0x0000000100a64a18>]

# p bob.pets.jump
# =begin
# undefined method `jump' for 
# [#<Cat:0x0000000109a44a98>, #<Bulldog:0x0000000109a449f8>]:Array 
# (NoMethodError)
# =end

bob.pets.each do |pet|
  p pet.jump
end

=begin
"jumping!"
"jumping!"
=end
