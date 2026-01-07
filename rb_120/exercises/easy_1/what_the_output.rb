=begin
What output does this code print? Think about any undesirable 
effects occurring due to the invocation on line 17. Fix this 
class so that there are no surprises waiting in store for the 
unsuspecting developer.
=end

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase!             # mutation
    "My name is #{@name}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)

puts fluffy.name   # Fluffy
puts fluffy        # My name is FLUFFY.   # mutation
puts fluffy.name   # FLUFFY
puts name          # FLUFFY



## Solution
class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)

puts fluffy.name      # Fluffy
puts fluffy           # My name is FLUFFY.
puts fluffy.name      # Fluffy
puts name             # Fluffy
