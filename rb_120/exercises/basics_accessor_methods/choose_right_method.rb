# Add the appropriate accessor methods to the following code.

## Solution
class Person
  attr_accessor :name
  attr_writer :phone_number
end

person1 = Person.new
person1.name = 'Jessica'              # setter
person1.phone_number = '0123456789'   # setter
puts person1.name                     # getter
# Jessica
