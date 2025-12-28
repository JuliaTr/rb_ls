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



## Constants
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age
  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age       # 28
puts sparky           # #<GoodDog:0x0000000107045508>


# to_s
