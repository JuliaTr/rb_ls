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



class Person
  def initialize
    @heroes = ['superman', 'Spiderman', 'Batman']
    @cash = { 'ones' => 12, 'fives' => 2, 'tens' => 0, 'twenties' => 2, 'hundreds' => 0 }
  end

  def cash_on_hand
    # this method will use @cash to calculate total cash value
    # we'll skip the implementation
  end

  def heroes
    @heroes.join(', ')
  end
end

joe = Person.new
joe.cash_on_hand      # => "$62.00"
joe.heroes            # => "Superman, Spiderman, Batman"
