=begin
Using the class definition from step #3, let's create a few 
more people -- that is, Person objects.
=end

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')
p bob.name == rob.name    # true

## Experiments
# Comparing objects:
p bob == rob     # false
p bob            # #<Person:0x0000000108194f20 @first_name="Robert", @last_name="Smith">
p rob            # #<Person:0x0000000108194d68 @first_name="Robert", @last_name="Smith">
