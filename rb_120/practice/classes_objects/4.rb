# Predict output



## Experiments
class Person
  attr_writer :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert Smith")
p bob #<Person:0x00000001078b5558 @name="Robert Smith">
puts bob.inspect #<Person:0x0000000108f95638 @name="Robert Smith">

puts bob #<Person:0x000000010d585558>

puts "The person's name is: #{bob}"
# The person's name is #<Person:0x00000001078b5558>
puts "The person't name is " + bob.to_s
# The person't name is #<Person:0x000000010af05590>










# class Person
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new("Robert Smith")
# # puts "The person's name is: #{bob}" # Robert Smith
# p bob.name
# puts "The person's name is: #{bob.name}" # ....<Person:0098...@name="Robert Smith">

# # The person's name is: Robert Smith