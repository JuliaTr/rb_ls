# # (not from the book)

# ## Use `initialize` with parameters
# class GoodDog
#   def initialize(name)
#     @name = name
#   end
# end

# sparky = GoodDog.new("Sparky") 
# # "Sparky" is passed to the initialize method

# p sparky # #<GoodDog:0x000000010ac25ac8 @name="Sparky">




# ## Use `initialize` without parameters

# # To perform action on creation
# class GoodDog
#   def initialize
#     puts "This object was initialized!"
#   end
# end

# sparky = GoodDog.new
# # This object was initialized!



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
# class BankAccount

# end 
