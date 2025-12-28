# ## Class Methods
# class GoodDog
#   def self.what_am_I     # Class method definition
#     "I'm a GoodDog class!"
#   end
# end

# p GoodDog.what_am_I  # "I'm a GoodDog class!"



# ## Class Variables
# class GoodDog
#   @@number_of_dogs = 0

#   def initialize
#     @@number_of_dogs += 1
#   end

#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
# end

# puts GoodDog.total_number_of_dogs    # 0

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs    # 2



# ## Constants
# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky.age       # 28
# puts sparky           # #<GoodDog:0x0000000107045508>


# to_s
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky
# This dog's name is Sparky and it is 28 in dog years.
p sparky
# #<GoodDog:0x00000001042651d8 @name="Sparky", @age=28>


=begin
irb(main):001:0> arr = [1, 2, 3]
=> [1, 2, 3]
irb(main):002:0> x = 5
=> 5
irb(main):003:0> "The #{arr} array doesn't include #{x}."
=> "The [1, 2, 3] array doesn't include 5."

irb(main):004:0> name = 'Sparky'
=> "Sparky"
irb(main):005:0> age = 28
=> 28
irb(main):006:0> "This dog's name is #{name} and it is #{age} in dog years."
=> "This dog's name is Sparky and it is 28 in dog years."
=end