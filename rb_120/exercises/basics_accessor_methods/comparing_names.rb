=begin
Using the following code, add the appropriate accessor 
methods. Keep in mind that the `last_name` getter shouldn't be 
visible outside the class, while the `first_name` getter should 
be visible outside the class.
=end

## Possible solution
class Person
  attr_accessor :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name
  end

  private

  attr_reader :last_name
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?    # false



## Experiments
class Person
  attr_writer :last_name

  private

  attr_reader :last_name
end

person1 = Person.new
person1.last_name = 'Smith'
person1.last_name
=begin
private method `last_name' called for #<Person:0x000000010cf25780 
@last_name="Smith"> (NoMethodError)
=end
