=begin
Which of the following class definitions will let us run this 
code and get the same result?
=end

## Works as expected:

# Option 1:
class Person
  attr_accessor :name
end

kate = Person.new
kate.name = 'Kate'
p kate.name   # "Kate"


# Option 2:
class Person
  attr_writer :name

  def name
    @name
  end
end

kate = Person.new
kate.name = 'Kate'
p kate.name # "Kate"
