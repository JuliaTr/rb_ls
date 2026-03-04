# Class inheritance

=begin
Description​​: Create an Animal class with a constructor that 
takes a name. It should have an eat method that returns a 
string "{name} is eating." Create a Fish class that inherits 
from Animal.[3:16 PM]The Fish class should also have a swim 
method that returns "{name} is swimming."
=end

class Animal
  def initialize(name)
    @name = name
  end

  def eat
    "#{@name} is eating."
  end
end

class Fish < Animal
  def swim
    "#{@name} is swimming."
  end
end

nemo = Fish.new('Nemo')
p nemo.eat == 'Nemo is eating.'
p nemo.swim == 'Nemo is swimming.'
# All test cases return `true`
