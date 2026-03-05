# What is the output of the following code?

class Car
  attr_reader :year
  attr_writer :color

  def initialize(y, c)
    @year = y
    @color = c
  end

  def info
    "This is a #{@color} car from #{year}."
  end
end

my_car = Car.new(2021, "blue")
my_car.color = "red"
puts my_car.info  # This is a red car from 2021.
