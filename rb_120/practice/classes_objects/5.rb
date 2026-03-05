# # Predict output

# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "My name is #{name}."
#   end
# end

# bob = Person.new("Robert Smith")
# puts bob  # My name is Robert Smith.
# p bob.to_s # "My name is Robert Smith." 

# =begin
# `to_s` defined inside `Person` class overrides deefault `to_s`
# method.
# =end



## Experiments:
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert Smith")
puts "My name is #{bob.name}." # My name is Robert Smith.
puts "My name is #{bob}."      # My name is #<Person:0x000000010aa14fe0>.




class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "My name is #{name}."
    42
  end
end

bob = Person.new("Robert Smith")

p bob   # puts bob.inspect
#<Person:0x0000000103a351c0 @name="Robert Smith">
puts bob.inspect
#<Person:0x0000000103a351c0 @name="Robert Smith">

puts bob # bob.to_s
#<Person:0x00000001093c51e0>




class Person
  def initialize(name)
    @name = name
  end

  def to_s
    "My name is #{@name}."
    "42"
  end
end

bob = Person.new("Robert Smith")

p bob             #<Person:0x0000000107ba5038 @name="Robert Smith">
puts bob.inspect  # #<Person:0x0000000106925188 @name="Robert Smith">

puts bob # 42
