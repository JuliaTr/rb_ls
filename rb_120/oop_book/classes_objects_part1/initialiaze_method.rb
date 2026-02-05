# (not from the book)

## Use `initialize` with parameters
class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky") 
# "Sparky" is passed to the initialize method

p sparky # #<GoodDog:0x000000010ac25ac8 @name="Sparky">




## Use `initialize` without parameters

# To perform action on creation
class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new
# This object was initialized!



# To update class-level data
class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs # 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs # 2



# When object has a default or no initial state
class BankAccount
  def initialize
    @account = 0 # set default initial state
  end
end

account = BankAccount.new

=begin
Every time a new `BankAccount` object is created, its 
`@account` instance variable is automatically set to `0`.
=end




## Experiments
# Won't work as expected:
class GoodDog
  @@number_of_dogs = 0

  def initialize
    # Nothing happens to the count on creation anymore
  end

  def self.total_number_of_dogs
    @@number_of_dogs += 1  # This is incorrect logic
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs 
# => 1. We haven't even made a dog yet!

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs 
# => 2. This seems right, but it's a coincidence.

puts GoodDog.total_number_of_dogs
# => 3. We still only have two dogs.
