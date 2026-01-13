# Modify the code so that this works:
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
mike.walk  # fails here

kitty = Cat.new("Kitty")
kitty.walk

flash = Cheetah.new("Flash")
flash.walk

=begin
undefined method `walk' for #<Person:0x000000010b074660 
@name="Mike"> (NoMethodError)
=end

=begin
Expected:

Mike strolls forward
Kitty sounders forward
Flash runs forward
=end



## Possible solution
module Walkable
  def walk
    puts "#{name} #{gait} forward"
  end
end

class Person
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  private 

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "sounders"
  end
end

class Cheetah
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new('Mike')
mike.walk

kitty = Cat.new("Kitty")
kitty.walk

flash = Cheetah.new("Flash")
flash.walk

=begin
Mike strolls forward
Kitty sounders forward
Flash runs forward
=end



## Bug Fix
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "strolls"
  end

  def walk
    puts "#{name} #{gait} forward"
  end
end

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "sounders"
  end

  def walk
    puts "#{name} #{gait} forward"
  end
end

class Cheetah
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "runs"
  end

  def walk
    puts "#{name} #{gait} forward"
  end
end

mike = Person.new("Mike")
mike.walk

kitty = Cat.new("Kitty")
kitty.walk

flash = Cheetah.new("Flash")
flash.walk

=begin
Works as expected:

Mike strolls forward
Kitty sounders forward
Flash runs forward
=end
