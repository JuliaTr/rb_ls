# Predict output.

class Person
  attr_accessor :name

  def initialize(n)
    @name = n
  end
end

bob = Person.new('bob')
bob.name = 'Robert'  # object's state is modified
puts bob.name # Robert

=begin
Output is `Robert`.

On line 11, an object of a `Person` class is created. An argument 
`'bob'` is passed to `new` method invocation. `bob` is assigned 
to the object. Upon object instantiation, an `initialize` method, 
defined on lines 6-8 inside `Person` is invoked automatically. 
On line 6, `n` is a parameter, which now points to `'bob'`. An 
instance variable `@name` is assigned to `n`. 

On line 4, `attr_accessor :name` creates the getter method `name` 
and the setter method `name=`. these methods allow us to read and 
write to the `@name` instance variable from outside the class.
  
The `name =` (line 12), `name` (line 13) methods are called on the
object referenced by `bob`.On line 12, the `bob.name =` call reassigns `@name`
to `'Robert` outside of the class. So, now `@name` points to `'Robert`,
which we can see from the output of `bob.name` call (line 13). 

This demonstrates the concept classes and objects. Objecta are 
created from classes, which are like blueprints.
=end
