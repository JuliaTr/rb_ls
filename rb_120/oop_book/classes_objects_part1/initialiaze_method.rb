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




## Use `initialize` without parameters

# To perform action on creation
class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new
# This object was initialized!
