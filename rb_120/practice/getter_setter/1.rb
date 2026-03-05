# Calling setter
# Difficulty​: Basic

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def change_name
    name = "Alex"  # no calling setter
  end
end

person = Person.new("John")
person.change_name
puts person.name  # John

=begin
The output is `John` (line 18).

On line 16, a new `Person` object is instantiated. 
The `initialize` method, defined on lines 7-9, is called 
with "John"` as an argument, setting the instance variable 
`@name` to `"John"` (line 8). Local variable `person` (line 16) 
points to this object.

On line 5, `attr_accessor` creates getter (`name`) and setter 
(`name=`) methods.

On line 17, `change_name` method is invoked on `person`. On line
12, `name` is a local variable to `change_name`, which exists only 
within the scope of that method, but neither a call to 
setter `name=`, nor interacting with `@name`. This is a local 
variable assignment, but not calling a setter method.

That's why the name hasn't changed and `puts person.name` accessing
getter `name` on line 18 output is `John`. 

This demonstrates a way to call setter method, particularly inside
a class in an instance method.

In order to change name we need to prepend `self.` (`self.name = "Alex"`)
on line 12.
=end



## Bug fix:
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def change_name
    self.name = "Alex"
  end
end

person = Person.new("John")
person.change_name
puts person.name   # Alex
