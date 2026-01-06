## Collaborator Objects
class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

joe = Person.new("Joe")
p joe.name               # "Joe"

=begin
A `Person` object's `name` attribute can be saved into a `@name`
instance variable as a string.
=end
