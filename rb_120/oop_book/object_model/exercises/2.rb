=begin
What is a module? What is its purpose? How do we use them 
with our classes? Create a module for the class you created 
in exercise 1 and include it properly.
=end

module Drive
  def drive(speed)
    puts speed
  end
end

class Car
  include Drive
end

class Truck
  include Drive
end

kia = Car.new
kia.drive("Slow")     # Slow
volvo = Truck.new
volvo.drive("Fast")   # Fast

=begin
Answer:
Module is a collection of behavoiurs that can be used in 
other classes by mixins. Mixins is a way to use module within
a class using the `include` method invocation. After mixing in
a module, the behaviours included in that module are available
to the class and objects.

On lines 21, 23, two objects `kia` (line 21) and `volvo` (line 23
are created by defining a class `Car` (lines 13-15) and 
a class `Truck` (lines 17-19) and instantiating them by using
`.new` method to create instance objects.

On lines 7-11, there's a module `Drive`. Module is used 
to extend functionality of a class. On lines 14, 18, the
`include` is invoked mixed with the module `Drive` we want to
include. Now, the fuctionality inside `Drive` module is available
inside `Car` and `Truck` classes and their objects `kia` and
`volvo`, respectively.
=end


## Possible examples:
# Purpose of module: extended functionality, using for many
# classes, DRY code
module Swimmable
end

class Person
  include Swimmable
end

first_person = Person.new


# Purpose of module: namespacing
module Careers
  class Engineer
  end

  class Teacher
  end
end

first_job = Careers::Teacher.new
