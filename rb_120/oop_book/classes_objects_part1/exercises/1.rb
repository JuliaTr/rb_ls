=begin
Create a class called MyCar. When you initialize a new 
instance or object of the class, allow the user to define 
some instance variables that tell us the year, color, and 
model of the car. Create an instance variable that is set 
to 0 during instantiation of the object to track the 
current speed of the car as well. Create instance methods 
that allow the car to speed up, brake, and shut the car off.
=end

## Solution:
class MyCar
  def initialize(color, model, year)
    @color = color
    @model = model
    @year = year
    @speed = 0
  end

  def speed_up
    "Speeding up! Woohoo..."
  end

  def brake
    "Time to stop! Using brakes..."
  end

  def shut_off
    "Came home. It's time to shut car off."
  end

  def info
    "Your car is #{@color} #{@model.upcase} produced in #{@year}."
  end
end

puts "What's the car year?"
year = gets.chomp.to_i
puts "What's the car color?"
color = gets.chomp
puts "What's the car model?"
model = gets.chomp

car = MyCar.new(color, model, year)
puts car.info
puts car.speed_up
puts car.brake
puts car.shut_off

=begin
What's the car year?
2013
What's the car color?
white
What's the car model?
kia
Your car is white KIA produced in 2013.
Speeding up! Woohoo...
Time to stop! Using brakes...
Came home. It's time to shut car off.
=end



## Possible solution:
class MyCar
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
p lumina
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed

=begin
#<MyCar:0x0000000107d4c170 @year=1997, @model="chevy lumina", @color="white", @current_speed=0>
You push the gas and accelerate 20 mph.
You are now going 20 mph.
You push the gas and accelerate 20 mph.
You are now going 40 mph.
You push the brake and decelerate 20 mph.
You are now going 20 mph.
You push the brake and decelerate 20 mph.
You are now going 0 mph.
Let's park this bad boy!
You are now going 0 mph.
=end
