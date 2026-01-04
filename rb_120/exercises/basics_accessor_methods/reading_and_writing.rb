# Add the appropriate accessor methods to the following code.

## Solution
class Person
  attr_accessor :name
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name           # Jessica



## Possible solution
class Person
  attr_writer :name
  # The same as:
  # def name=(value)
  #   @name = value
  # end

  attr_reader :name
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name           # Jessica



## Experiments
class Person
  attr_reader :name
  attr_writer :name
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name             # Jessica

# The order of accessors doesn't matter.