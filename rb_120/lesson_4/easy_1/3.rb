=begin
In the last question we had a module called Speed which contained 
a go_fast method. We included this module in the Car class as 
shown below.
=end

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed

  def go_slow
    puts "I am safe and driving slow."
  end
end

small_car = Car.new
small_car.go_fast    # I am a Car and going super fast!

=begin
In the lookup path Ruby looks for `go_fast` method in `Car` class
first, then in `Speed` module, where it has found it. after looking 
in included modules, Ruby will keep looking at `Object`, `Kernel`,
`Basic)bject` classes.

Also, we use `self.class` in the method and this works because:
1. `self` refers to the object referenced bu `small_car`, which is 
`Car` object.
2. `self.class` returns `Car`
3. `to_s` is't used here because `self.class` is inside of a `string`
and is interpolated which means it will take care of the `to_s` for us.
=end

p Car.ancestors  # [Car, Speed, Object, Kernel, BasicObject]
