=begin
You can see in the `make_one_year_older` method we have used `self`. 
What does `self` refer to here?
=end

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older  # instance method
    # Calls the `name=` setter method on the current object.
    # Changes the object's `@name`
    self.age += 1
  end
end

pusha = Cat.new('Birman')
p pusha.age                   # 0
p pusha.make_one_year_older   # 1
p pusha.age                   # 1

=begin
Answer:
The `make_one_year_older` is an instance method, which can only be called
on instances of the class `Cat`.

`self` is referencing the instance (object) that called the method -
the calling object.

`self` is used to represent a way for syntactical sugar for invoking a
setter method. `self` is required, so that Ruby knows the difference
between initializing a local variable and invoking a setter method.

To use `self` when calling a setter method from within the class. 
If I were to write `age = age + 1` inside the `make_one_year_older`
method, ruby would think I were creating a new local variable named
`age`, not calling the setter method for the object.
=end
