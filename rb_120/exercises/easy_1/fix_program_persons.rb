# Complete this program so that it produces the expected output:

class Person
  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'

puts person
=begin
undefined method `first_name=' for #<Person:0x00000001094e5688 
@first_name="John", @last_name="Doe"> (NoMethodError)
=end



## Possible bug fix
=begin
We capitalized at the boundaries:
- When the object is created (in `initialize`)
- When the attributes are changed (in the writer methods)

We keep the instance variables in a consistent, valid state
(already capitalized).
=end

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def first_name=(value)
    @first_name = value.capitalize
  end

  def last_name=(value)
    @last_name = value.capitalize
  end

  # We need to present the internal state, not transform it.
  def to_s
    "#{@first_name} #{@last_name}"
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person

=begin
John Doe
Jane Smith
=end




## Experiments
class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person

=begin
John Doe
Jane Smith
=end

p person.first_name   # "jane"
