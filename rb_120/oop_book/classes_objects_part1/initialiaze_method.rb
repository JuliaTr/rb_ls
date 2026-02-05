## Use `initialize` with parameters
class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky") 
# "Sparky" is passed to the initialize method
