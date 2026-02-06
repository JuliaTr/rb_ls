# Encapsulation and State

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def change_name(new_name)
    self.name = new_name
  end

  private

  attr_writer :name
end

person = Person.new('Alice')
person.change_name('Bob')
puts person.name  # Bob

person.name = 'Charlie'
=begin
private method `name=' called for 
#<Person:0x00000001026753b0 @name="Bob"> (NoMethodError)
=end

begin
  person.name = 'Charlie'
rescue => e
  puts e.class  # NoMethodError
end

=begin
The output is `Bob`, `NoMethodError`.

On line 19, a new object `Person.new` with an initial state 
`'Alice'`is created and assigned to `person`. On lines 6-8,
upon initialization, the `initialize` method sets up and 
assigns `'Alice` to instance variable `@name`.

Private methods (below `Module#private` method call) can only 
be invoked from within, but not outside, the class. Private
methods help us to control access to setter for `name` 
(`attr_writer :name` - line 16). We cannot change 
name outside of the class, otherwise `NoMethodError` is raised
(lines 29-33). However, name was change (`self.name = new_name`) 
to `Bob` by `self.name` call on line 11. 

This demonstrates encapsulation and method access control via 
using `attr_reader`, `privite`, `attr_writer` methods.
=end