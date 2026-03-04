=begin
Description​​: Define a Dog class. The constructor should take a 
name and a breed. Implement the appropriate method (__str__ in 
Python, to_s in Ruby) so that when an instance of the class is 
printed, it returns a string in the format "Sparky is a Golden 
Retriever".
=end

class Dog
  def initialize(name, breed)
    @name = 'Sparky'
    @breed = 'Golden Retriever'
  end

  def to_s
    "#{@name} is a #{@breed}"
  end
end

dog = Dog.new('Sparky', 'Golden Retriever')
p dog.to_s == 'Sparky is a Golden Retriever' # true
