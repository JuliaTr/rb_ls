# Predict output. Why? Which concept it demonstrate?

class Person
  attr_accessor :last_name
  attr_reader :first_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    # Combines two getter methods and strips whitespaces
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    # Calls another method to parse the input and update two
    # separate instance variables
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new('Robert')
puts bob.name        # Robert
puts bob.first_name  # Robert
puts bob.last_name   # (empty line) (`@last_name = ''`)
bob.last_name = 'Smith'
puts bob.name        # Robert Smith

bob.name = 'John Adams'
puts bob.first_name  # John
puts bob.last_name   # Adams


=begin
Output is `Robert` (line 29), `Robert` (line 30), empty line (line 31),
`Robert Smith` (line 33), `John` (line 36), `Adams` (line 37).

On line 28, a new `Person` object is instantiated. The `initialize`
method (lines 7-9) is called with `'Robert'` as an argument, passing 
its parameter `full_name` as an argument to the `parse_full_name(full_name)`
call (line 8).

On lines 23-24, inside the `parse_full_name(full_name)`, defined 
on lines 21-25, two instance variables `@first_name` and `@last_name`
are initialized referencing objects returned by `parts.first` and
a ternary operator `parts.size > 1 ? parts.last : ''`.

The `parse_full_name` method is `private`, meaning its implementation 
details can only be used by other methods within the `Person` class.
This prevents it from being called from outside the object.

On line 4, the `attr_accessor :last_name` provides the getter (`last_name`)
and the setter (``last_name=`) for `@last_name`, which make it possible to read
and write to the `@last_name` from outside the class.

On line 5, the `attr_reader :first_name` provides the getter (`first_name`)
for `@first_name`, which makes it possible to read the `@first_name`
from outside the class.

On lines 11-13, the custom getter method `name` combines two getter
method calls `first_name` and `last_name` to create a new value. 

On lines 15-17, the custom setter method `name=` parses input and
updates two instance variables by calling to `parse_full_name(full_name)`.

So, the call to `name` (line 29), `first_name` (line 30),
`last_name` (line 31) output `Robert`,`Robert`, empty line
to the console. Then on line 32 the call to `bob.last_name = 'Smith'`
(syntactical sugar for `bob.last_name=('Smith')`) reassined 
`@last_name`to `Smith`. So, the call to `name` (line 33) outputs 
`Robert Smith`. On line 35, the call to `bob.name = 'John Adams'`
updates name. So, now the call to `first_name` and `last_name` 
outputs `John` and `Adams` to the console.

This demnostrate classes and objects, calling the getter and the
setter methods with `attr_accessor` (read/write) and 
`attr_reader` (read-only) access to an object's state, encapsulation
with `private` method concepts. 
=end



=begin
`name` and `name=` are custom getter and setter because their 
**primary purpose and interface** are designed to manage access
to a conceptual property of the object. 
- Their intent is to manage a property, meaning they exist to provide access to the "full name"
property. 
- They follow the accessor naming convention. 
- They abstract the implementation, meaning that they hide the fact that the name
is stored as two separate parts.
=end
