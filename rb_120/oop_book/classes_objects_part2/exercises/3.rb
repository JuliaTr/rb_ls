=begin
When running the following code, we get the following error.

test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)
=end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
=begin
undefined method `name=' for #<Person:0x0000000107d758b8 
@name="Steve"> (NoMethodError)
=end


# Why do we get this error and how do we fix it?

=begin
On line 17, we change the name on `"Bob"`. However, on 
line 9, `attr_reader` provides only getter method for
`:name`. It doesn't create setter `name=`.That's why, we 
can only view name, but cannot change it.

We need to change `attr_reader` on `attr_accessor`. The
`attr_accessor` create getter and setter.
=end

# Bug fix
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
puts bob.name         # Steve
bob.name = "Bob"
puts bob.name         # Bob
