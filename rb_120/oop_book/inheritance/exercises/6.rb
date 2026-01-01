=begin
Write a method called `age` that calls a private method to 
calculate the age of the vehicle. Make sure the private 
method is not available from outside of the class. 
You'll need to use Ruby's built-in Time class to help.
=end

=begin
private method `car_years' called for #<MyCar:0x000000010cc953f8 
@year=1997, @model="chevy lumina"> (NoMethodError)
=end

## Possible solution
class Vehicle
  attr_accessor :year, :model   # we can access `year` as expected

  def initialize(year, model)
    self.year = year
    self.model = year
  end

  def age      # isn't private; calls the private method
    "Your #{self.model} is #{years_old} years old."
  end

  private
  def years_old  # is private
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
end

lumina = MyCar.new(1997, 'chevy lumina')
puts lumina.age
# Your 1997 is 28 years old.

=begin
Method which calls the private method is available from
outside of the class. But private method isn't.
=end

puts lumina.years_old
=begin
private method `car_years' called for #<MyCar:0x000000010cc953f8 
@year=1997, @model="chevy lumina"> (NoMethodError)
=end




# we cannot access `year`
class Vehicle
  attr_reader :year, :model    # we cannot access `year`

  def initialize(year, model)
    self.year = year           # we cannot access `year`
    self.model = model
  end

  private

  def car_years
    t = Time.now
    years_old = t.year - self.year   # we cannot access year
    "Your #{self.model} is #{years_old} years old."
  end
end

class MyCar < Vehicle
end

lumina = MyCar.new(1997, 'chevy lumina')
puts lumina.car_years
=begin
undefined method `year=' for #<MyCar:0x00000001103452b8> 
(NoMethodError)
=end
