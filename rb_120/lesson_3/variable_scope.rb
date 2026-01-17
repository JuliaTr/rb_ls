## Instance Variable Scope

class Person
  def initialize(n)
    @name = n
  end
end

bob = Person.new('bob')
joe = Person.new('joe')

puts bob.inspect   # #<Person:0x0000000109d35ab8 @name="bob">
puts joe.inspect   # #<Person:0x0000000109d35a18 @name="joe">



class Person
  def initialize(n)
    @name = n   # initialized
  end

  def get_name
    @name       # accessible
  end
end

bob = Person.new('bob')
p bob.get_name    # "bob"



class Person
  def get_name
    @name       # not accessible; uninitialized anywhere
  end
end

bob = Person.new
p bob.get_name    # nil



class Person
  @name = "bob"   # class level initialization

  def get_name
    @name
  end
end

bob = Person.new
p bob.get_name     # nil





## Class Variable Scope

class Person
  @@total_people = 0

  def self.total_people
    @@total_people
  end

  def initialize
    @@total_people += 1
  end

  def total_people
    @@total_people
  end
end

p Person.total_people        # 0
Person.new
Person.new
p Person.total_people        # 2

bob = Person.new
p bob.total_people           # 3

joe = Person.new
p joe.total_people           # 4

p Person.total_people        # 4





## Constant Variable Scope

class Person
  GREETINGS = ['Hello', 'Hi', 'Hey']

  def self.greetings
    GREETINGS.join(', ')
  end

  def greet
    GREETINGS.sample
  end
end

puts Person.greetings
puts Person.new.greet

=begin
$ ruby variable_scope.rb
Hello, Hi, Hey
Hey
$ ruby variable_scope.rb
Hello, Hi, Hey
Hi
=end




module ElizabethanEra
  GREETINGS = ['How dost thou', 'Bless thee', 'Good morrow']

  class Person
    def self.greetings
      GREETINGS.join(', ')
    end

    def greet
      GREETINGS.sample
    end
  end
end

puts ElizabethanEra::Person.greetings
puts ElizabethanEra::Person.new.greet

=begin
$ ruby variable_scope.rb
How dost thou, Bless thee, Good morrow
Good morrow
$ ruby variable_scope.rb
How dost thou, Bless thee, Good morrow
Bless thee
=end




class Computer
  GREETINGS = ["Beep", "Boop"]
end

class Person
  def self.greetings
    GREETINGS.join(', ')
  end

  def greet
    GREETINGS.sample
  end
end

# puts Person.greetings
# # uninitialized constant Person::GREETINGS (NameError)

puts Person.new.greet
# uninitialized constant Person::GREETINGS (NameError)
