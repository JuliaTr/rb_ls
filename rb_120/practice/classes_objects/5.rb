# Predict output

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    "My name is #{name}."
  end
end

bob = Person.new("Robert Smith")
puts bob  # My name is Robert Smith.
p bob.to_s # "My name is Robert Smith."



## Experiments:
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert Smith")
puts "My name is #{bob.name}."



# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "My name is #{name}."
#     42
#   end
# end

# bob = Person.new("Robert Smith")

# p bob # puts bob.inspect
# puts bob # bob.to_s

# # "My name is Robert Smith."