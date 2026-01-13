=begin
Add your own name and pets to this project.

Suppose the shelter has a number of not-yet-adopted pets, and 
wants to manage them through this same system. Thus, you should 
be able to add the following output to the example output shown above:

The Animal Shelter has the following unadopted pets:
a dog named Asta
a dog named Laddie
a cat named Fluffy
a cat named Kat
a cat named Ben
a parakeet named Chatterbox
a parakeet named Bluebell
   ...

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.
The Animal shelter has 7 unadopted pets.

Can you make these updates to your solution? Did you need to 
change your class system at all? Were you able to make all of 
your changes without modifying the existing interface?
=end

class Pet
  @@number_of_pets = 0

  attr_reader :animal, :name

  def initialize(animal, name)
    @animal = animal
    @name = name
    @@number_of_pets += 1
  end

  def self.total_number_of_pets
    @@number_of_pets
  end

  def to_s
    "a #{animal} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    pets.size
  end

  def print_pets
    puts pets
  end
end

class Shelter
  attr_reader :name, :unadopted_pets

  def initialize(name)
    @name = name
    @owners = {}
    @unadopted_pets = []
  end

  def add_unadopted_pet(pet)
    @unadopted_pets << pet
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    @owners[owner.name] ||= owner
    @unadopted_pets.delete(pet)
  end

  def print_adoptions
    @owners.each_pair do |name, owner|
      puts "#{name} has adopted the following pets:"
      owner.print_pets
      puts
    end
  end

  def print_unadopted
    puts "The #{name} has the following unadopted pets:"
    @unadopted_pets.each { |pet| puts pet }
    puts
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
lada         = Pet.new('dog', 'Lada')  # added
pusha        = Pet.new('cat', 'Pusha') # added

# Not adopted:
astra        = Pet.new('dog', 'Astra')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'Fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatterbox   = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')

# # Expected: 16
# p Pet.total_number_of_pets  # 16

shelter = Shelter.new('Animal Shelter')
shelter.add_unadopted_pet(butterscotch)
shelter.add_unadopted_pet(pudding)
shelter.add_unadopted_pet(darwin)
shelter.add_unadopted_pet(kennedy)
shelter.add_unadopted_pet(sweetie)
shelter.add_unadopted_pet(molly)
shelter.add_unadopted_pet(chester)
shelter.add_unadopted_pet(lada)
shelter.add_unadopted_pet(pusha)
shelter.add_unadopted_pet(astra)
shelter.add_unadopted_pet(laddie)
shelter.add_unadopted_pet(fluffy)
shelter.add_unadopted_pet(kat)
shelter.add_unadopted_pet(ben)
shelter.add_unadopted_pet(chatterbox)
shelter.add_unadopted_pet(bluebell)

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
ytryhubniak = Owner.new('Y Tryhubniak') # added

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(ytryhubniak, lada)  # added
shelter.adopt(ytryhubniak, pusha) # added
shelter.print_adoptions

# Expected: 7 (after adoption)
shelter.print_unadopted

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{ytryhubniak.name} has #{ytryhubniak.number_of_pets} adopted pets." # added

# Not adopted pets
puts "#{shelter.name} has #{shelter.unadopted_pets.size} unadopted pets."

=begin
P Hanson has adopted the following pets:
a cat named Butterscotch
a cat named Pudding
a bearded dragon named Darwin

B Holmes has adopted the following pets:
a dog named Kennedy
a parakeet named Sweetie Pie
a dog named Molly
a fish named Chester

Y Tryhubniak has adopted the following pets:
a dog named Lada
a cat named Pusha

The Animal Shelter has the following unadopted pets:
a dog named Astra
a dog named Laddie
a cat named Fluffy
a cat named Kat
a cat named Ben
a parakeet named Chatterbox
a parakeet named Bluebell

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.
Y Tryhubniak has 2 adopted pets.
Animal Shelter has 7 unadopted pets.
=end
