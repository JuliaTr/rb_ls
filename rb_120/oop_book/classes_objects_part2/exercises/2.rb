=begin
Override the to_s method to create a user friendly print 
out of your object.
=end

class MyAwesomeClass
  def to_s
    "Awesome"
  end
end

puppy = MyAwesomeClass.new
puts puppy                      # Awesome
puts "The puppy is #{puppy}!"   # The puppy is Awesome!



## Possible solution
class MyCar
  attr_accessor :year, :model, :color
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
  end

  def to_s
    "My car is a #{color}, #{year}, #{model}!"
  end
end

my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car   # My car is a silver, 2010, Ford Focus!
