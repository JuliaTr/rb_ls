=begin
Modify the following code to accept a string containing a 
first and last name. The name should be split into two 
instance variables in the setter method, then joined in the 
getter method to form a full name.
=end

## Solution
class Person
  def name=(name)
    arr = name.split
    @first_name = arr[0]
    @last_name = arr[1]
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name        # John Doe




## Possible solution
class Person
  def name=(name)
    @first_name, @last_name = name.split(' ')
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name          # John Doe
